syms x y;
u=x*log(x+y);
diff(u,x,2)
diff(u,y,2)
diff(diff(u,y),x)