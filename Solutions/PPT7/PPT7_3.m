syms x(t) y(t) t;
[x,y]=dsolve(diff(x,t)==2*x+y,diff(y,t)==3*x+4*y,t)