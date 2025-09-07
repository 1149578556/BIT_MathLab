x=0:10;
y=binocdf(x,10,0.25);
disp('x和Y对应关系为：')
for i=1:length(x)
    disp(['x = ' num2str(x(i)) ', Y = ' num2str(y(i))])
end
plot(x,y)
xlabel('x')