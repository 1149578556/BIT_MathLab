x0=[1 1 1 1 2 2 2 3 3 4 4 5 5 5];
y0=[1 2 4 5 1 3 5 2 4 2 5 1 3 5];
z0=[-34 -36 -32 -28 -57 -39 -35 -45 -57 -47 -41 -39 -47 -57];
%由于数值越高，深度越深，相对更靠下面，于是直接取相反数

[x,y]=meshgrid(1:0.1:5,1:0.1:5);
z1=griddata(x0,y0,z0,x,y,'linear');
z2=griddata(x0,y0,z0,x,y,'cubic');
figure(1),surf(x,y,z1),xlabel('x'),ylabel('y')
figure(2),surf(x,y,z2),xlabel('x'),ylabel('y')