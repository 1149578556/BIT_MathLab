N = 5000000;

% 第一段区间 [0, pi/2]
xi1 = unifrnd(0, pi/2, N, 1);
y1 = exp(xi1.^2) .* sin(2*xi1);
y1_max = max(y1);
yi1 = unifrnd(0, y1_max, N, 1);
count1 = sum(yi1 <= y1);
S1 = (pi/2) * y1_max * count1 / N;

% 第二段区间 [pi/2, 2]
xi2 = unifrnd(pi/2, 2, N, 1);
y2 = exp(xi2.^2) .* sin(2*xi2);
y2_min = min(y2); % y2 为负
yi2 = unifrnd(y2_min, 0, N, 1); % 只采样负区间
count2 = sum(yi2 >= y2);
S2 = (2 - pi/2) * abs(y2_min) * count2 / N;

S = S1 - S2; % 第二段为负值，需减去
disp('S=');
disp(S);

%数值积分
f = @(x) exp(x.^2).*sin(2*x);
sum1 = integral(f, 0, 2);
disp('sum1=');
disp(sum1);