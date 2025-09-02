syms x y(x);
y=dsolve(diff(y,x)+2*x*y==x*exp(-x^2),x)
dy_dx=diff(y,x,1);
simplify(dy_dx+2*x*y-x*exp(-x^2))%结果是0得以验证