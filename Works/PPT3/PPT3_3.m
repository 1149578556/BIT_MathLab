syms x y;
f1=log(sqrt(x^2+y^2))-atan(y/x);
f2=y^x-x^y;
dy1_dx1=-diff(f1,x)/diff(f1,y)
dy2_dx2=-diff(f2,x)/diff(f2,y)