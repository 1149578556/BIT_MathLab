syms x;
f1 = x*log(x);
%这个输出结果一长串，尝试simplify没用
vpa(int(f1, x, 1, exp(1)),8) 

f2=x/(sin(x)^2);
int(f2,x,pi/4,pi/3)

f3=sin(log(x));
vpa(int(f3,x,1,exp(1)),8)

f4=(x^3*(sin(x))^2)/(x^4+2*x^2+1);
vpa(int(f4,x,-1,1),8)
%输出结果极小
%实际观察函数形式是奇函数，积分结果为0