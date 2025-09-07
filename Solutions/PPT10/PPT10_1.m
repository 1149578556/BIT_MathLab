x=-5:0.01:15;
y1=normpdf(x,5,0.05);
y2=normpdf(x,5,0.75);
y3=normpdf(x,5,1.5);
y4=normpdf(x,5,2.5);
y5=normpdf(x,5,4);
plot(x,y1,'r',x,y2,'g',x,y3,'b',x,y4,'m',x,y5,'k')
legend('std=0.05','std=0.75','std=1.5','std=2.5','std=4')
xlabel('x')
axis([-5 15 0 0.5])
grid on