syms x;
f=exp(x)*sin(x);
f2=diff(f,x,2);
f1=diff(f,x,1);
f2-2*f1+2*f
