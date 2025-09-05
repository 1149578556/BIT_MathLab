x0=-10:10;
y0=-10:10;
[x,y]=meshgrid(x0,y0);
z=x.^2.*sin(y)+y.^2.*sin(x);
disp('z在各点处的取值为');
disp(z);

[Xq, Yq] = meshgrid(linspace(-10, 10, 100), linspace(-10, 10, 100));
Zq = interp2(x, y, z, Xq, Yq, 'cubic');
surf(Xq, Yq, Zq);
title('三次插值后的图形');
xlabel('x');
ylabel('y');
zlabel('z');