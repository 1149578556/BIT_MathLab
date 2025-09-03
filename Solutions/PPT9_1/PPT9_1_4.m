p1 = zeros(1,24); % 23次多项式有24个系数
p1(1) = 5;    % x^23
p1(17) = -6;  % x^7
p1(18) = 8;   % x^6
p1(22) = -5;  % x^2
f1_roots = roots(p1);
disp('f1的根为：');
disp(f1_roots);

syms x;
f2 = (2*x+3)^3 - 4;
f2 = expand(f2);

% 将符号多项式转为系数向量
p2 = sym2poly(f2);

f2_roots = roots(p2);
disp('f2的根为：');
disp(f2_roots);