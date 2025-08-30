syms n x y;
f1=(1-1/n)^n;
limit(f1,n,inf)

f2=(n^3+3^n)^(1/n);
limit(f2,n,inf)

f3=(1+sin(2*x))/(1-cos(4*x));
limit(f3,x,pi/4)

f4=(1+cos(x))^(3*sec(x));
limit(f4,x,pi/2)

f5=(x^2)*exp(1/x^2);
limit(f5,x,0)

f6=(x^2-2*x+1)/(x^3-x);
limit(f6,x,1)

f7=((2/pi)*atan(x))^x;
limit(f7,x,inf)

f8=(1-cos(x^2+y^2))/((x^2+y^2)*exp(x^2+y^2));
limit(limit(f8,x,0),y,0)