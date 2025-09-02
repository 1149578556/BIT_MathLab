syms x y a b;
u=log(sqrt((x-a)^2+(y-b)^2));
simplify(diff(u,x,2)+diff(u,y,2))