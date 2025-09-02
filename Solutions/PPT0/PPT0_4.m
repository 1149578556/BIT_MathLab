n=10;%第n次落地
sum=100;
for i=2:10
    h = 100/(2^(i-1));%i-1次的反弹高度
    sum = sum+ 2*h;
end
h=h/2 %第n次反弹高度
sum

