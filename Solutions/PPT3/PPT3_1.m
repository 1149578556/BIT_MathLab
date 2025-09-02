syms x a;
f1=(sqrt(x)+1)*(1/sqrt(x)-1);
diff(f1,x)

f2=x*sin(x)*log(x);
diff(f2,x)

f3=2*(sin(1/x^2))^2;
diff(f3,x)

f4=log(x+sqrt(x^2+a^2));
diff(f4,x)