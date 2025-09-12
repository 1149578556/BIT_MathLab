%%1
syms x(t)
Dx = diff(x, t);
sol = dsolve(diff(x, t, 2) + 2*diff(x, t) + 3*x == exp(4*t)*sin(5*t+6), Dx(0) == 1, x(0) == 1);
disp('微分方程的解为:');
disp(simplify(sol));

%%2
[t, x] = ode45(@compete, [0 30], [1,0.5]);
plot(t, x(:,1), '-o', t, x(:,2), '-*');
xlabel('t');
ylabel('x,y');
legend('x', 'y');
grid on;
figure(2);plot(x(:,1), x(:,2), '-o');
xlabel('x');
ylabel('y');
grid on;

function dx=compete(t,x)
dx=zeros(2,1);
dx(1)=-x(1)^3-x(2);
dx(2)=x(1)-x(2)^3;
end