syms x y z;
f1=(cos(x))^2+(cos(y))^2+(cos(z))^2-1;
dz_dx1=-diff(f1,x)/diff(f1,z)
dz_dy1=-diff(f1,y)/diff(f1,z)
f2=exp(z)-x*y*z;
dz_dx2=-diff(f2,x)/diff(f2,z)
dz_dy2=-diff(f2,y)/diff(f2,z)