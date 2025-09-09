Y = poissrnd(5, 10000, 1);

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

figure(1);
hist(Y,50);
title('Y的直方图');
xlabel('值');
ylabel('频数');

figure(2);
cdfplot(Y);
title('Y的累计频率直方图');
xlabel('值');
ylabel('频率');
%放大可以看到一阶一阶的