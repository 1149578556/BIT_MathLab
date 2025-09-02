t=-10:0.01:10;
x=t.^2;y=t.^3;
subplot(1,2,1);plot(x,y)
grid on;
x1=cos(t);
y1=sin(t);
z=t;
subplot(1,2,2);plot3(x1,y1,z)
grid on;