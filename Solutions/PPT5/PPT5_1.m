x0=linspace(-10,10,100);
y0=3*sin(2*x0).*cos(3*x0)+4*sin(x0/2).*cos(x0/3);
x=linspace(-10,10,10000);
y1=interp1(x0,y0,x);
y2=spline(x0,y0,x);
y3=interp1(x0,y0,x,'cubic');
plot(x,y1,x,y2,x,y3,'LineWidth',1)
grid on;
legend('分段线性插值','三次样条插值','分段三次插值');