x0=[129 140 108 88 185 195 105 157 107 77 145 162 162 117];
y0=[7 141 28 147 22 137 85 -6 -81 3 45 -66 84 -38];
z0=[4 8 6 8 6 8 8 9 9 8 8 9 4 9];
[x,y]=meshgrid(linspace(70,200,500),linspace(-50,150,500));
z=griddata(x0,y0,z0,x,y);
figure;
mesh(x,y,-z);
xlabel('X');
ylabel('Y');

figure(2);
contour3(x, y, z, [5 5]); 
grid on;
xlabel('X');
ylabel('Y');