[t,x]=ode45('compete',[0 10],[1;1]);

plot(t,x(:,1), 'r', t,x(:,2), 'b');
xlabel('t');
ylabel('解');
legend('x(t)', 'y(t)');
figure(2);plot(x(:,1), x(:,2))
xlabel('x(t)');
ylabel('y(t)');
title('常微分方程组数值解');