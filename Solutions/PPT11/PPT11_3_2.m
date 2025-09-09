x=unifrnd(1, 4, 10000000, 1);
y=unifrnd(0, 1, 10000000, 1);
zi=unifrnd(0, 9e6, 10000000, 1);
z=exp(x.^2 + y.^2).*sin(2*(x+y));
count=0;
for i=1:10000000
    if zi(i) <= z(i)
        count=count+1;
    end
end
S1=count*3*1*9e6/10000000;

zi=unifrnd(-1.4e7, 0, 10000000, 1);
z=exp(x.^2 + y.^2).*sin(2*(x+y));
count=0;
for i=1:10000000
    if zi(i) >= z(i)
        count=count+1;
    end
end
S2=count*3*1.4e7/10000000;
S=S1-S2

%数值积分
f = @(x,y) exp(x.^2 + y.^2).*sin(2*(x+y));
S_ = integral2(f, 1, 4, 0, 1)