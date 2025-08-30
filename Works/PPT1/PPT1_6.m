x1=1:0.01:3;y1=nthroot(x1.^2+1,3);
x2=1:0.01:3;y2=nthroot(x2.^3-1,2);
plot(x1,y1)
hold on
axis([1,3,1,3])
plot(x2,y2)
grid on
