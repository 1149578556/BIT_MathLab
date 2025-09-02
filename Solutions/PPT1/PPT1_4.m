x=-2:0.01:2;
y=nthroot((1-x).^2,3)+nthroot((1+x).^(2),3);
plot(x,y,'r-')
grid on