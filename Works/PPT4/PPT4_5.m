syms x y;
f1=x+y;
int(int(f1,y,-sqrt(1-x^2),sqrt(1-x^2)),x,-1,1)

f2=x^2+y^2;
int(int(f2,x,-sqrt(1/4+-y^2)+1/2,sqrt(1/4-y^2)+1/2),y,-1/2,1/2)