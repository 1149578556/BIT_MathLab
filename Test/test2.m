syms t;
x=log(1+t^2);
y=t*asin(t);
dy_dx=diff(y,t)/diff(x,t)