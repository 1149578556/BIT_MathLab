syms x t;
fun=(1+log(x))/(x*log(x))^2;
F=int(fun,x,2,t)
diff(F,t)