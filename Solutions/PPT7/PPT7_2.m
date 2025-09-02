syms x y(x) ;
y=dsolve(diff(y,x)*x+y-exp(x)==0,y(1)==2*exp(sym(1)),x)

fun=matlabFunction(y);
x=-1:0.01:1;
y=fun(x);


plot(x,y)
axis([-1,1,-50,50])
grid on