%F(x)=0.22*log(x),1<=x<=e
%F(x)=0.22+0.78*sin((x-exp(1))/2)
%反函数
U=unifrnd(0,1,1,10000);
Y=zeros(10000,1);
for i=1:10000
    if U(i)<=0.22
        Y(i)=exp(U(i)/0.22);
    else
        Y(i)=2*asin((U(i)-0.22)/0.78)+exp(1);
    end
end

Y_mean=mean(Y);
Y_median=median(Y);
Y_var=var(Y);
Y_std=std(Y);
Y_range=range(Y);
Y_skewness=skewness(Y);
Y_kurtosis=kurtosis(Y);
disp('Y的均值为：');
disp(Y_mean);
disp('Y的中位数为：');
disp(Y_median);
disp('Y的方差为：');
disp(Y_var);
disp('Y的标准差为：');
disp(Y_std);
disp('Y的极差为：');
disp(Y_range);
disp('Y的偏度为：');
disp(Y_skewness);
disp('Y的峰度为：');
disp(Y_kurtosis);

% 频率直方图
figure;
histogram(Y, 'Normalization', 'probability');
title('Y的频率直方图');
xlabel('Y值');
ylabel('频率');

% 带密度曲线的频率直方图
figure;
histogram(Y, 'Normalization', 'pdf');
hold on;
[f, xi] = ksdensity(Y);
plot(xi, f, 'r', 'LineWidth', 2);
title('Y的频率直方图及密度曲线');
xlabel('Y值');
ylabel('概率密度');
legend('频率直方图', '密度曲线');
hold off;

% 累计频率直方图
figure;
histogram(Y, 'Normalization', 'cdf');
title('Y的累计频率直方图');
xlabel('Y值');
ylabel('累计频率');