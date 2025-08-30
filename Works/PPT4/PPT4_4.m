a=1;
t=0:0.001:2*pi;
x=a*(t-sin(t));
y=a*(1-cos(t));
z=trapz(x,y)
