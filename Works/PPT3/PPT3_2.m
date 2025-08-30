syms t;
x1=t^4;y1=4*t;
x2=log(1+t^2);y2=t-atan(t);
dy1_dx1=diff(y1,t)/diff(x1,t)
dy2_d_x2=diff(y2,t)/diff(x2,t)