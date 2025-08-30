x=linspace(-1,1,200);
y1=real(sqrt(x));
y2=x.^2;
y3=nthroot(x,3);
y4=x.^3;
y5=x;
plot(x,y1,'r-','DisplayName','y1')
hold on;
plot(x,y2,'b-','DisplayName','y2')
plot(x,y3,'g-','DisplayName','y3')
plot(x,y4,'r--','DisplayName','y4')
plot(x,y5,'b--','DisplayName','y5')
grid on
legend