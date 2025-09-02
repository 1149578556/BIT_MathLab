x=linspace(0,pi/2,201);
y=sin(x.^(3/2)).*(cos(x)).^2.*x;
sum1=(x(2)-x(1))*(2*sum(y)-y(1)-y(201))/2

sum2=0;
h=(x(2)-x(1))/2;
for k=1:200
    a=fun6(x(k));
    b=fun6((x(k)+x(k+1))/2);
    c=fun6(x(k+1));
    sum2=sum2+(h/3)*(a+4*b+c);
end
sum2