%%1
syms x y
f = ((1 + x)^(1/x) - exp(1)) / x;
result= diff((1 + x)^(1/x) - exp(1), x) / diff(x, x);
result_at_x0 = limit(result, x, 0);
disp('在x=0处的极限为:');
disp(result_at_x0);

%%2
g = atan(y/x)-log(sqrt(x^2+y^2));
dy_dx = simplify(-diff(g, x) / diff(g, y));
disp(dy_dx);

%%3
h=sin(pi*(x^2+y^2));
% 精确解
integral_exact = int(int(h, y, -sqrt(1-x^2), sqrt(1-x^2)), x, -1, 1);
disp('精确解:');
disp(vpa(integral_exact, 6));

% 数值解
integral_numeric = integral2(@(x, y) sin(pi*(x.^2 + y.^2)) .* (x.^2 + y.^2 <= 1), -1, 1, -1, 1);
disp('数值解:');
disp(integral_numeric);