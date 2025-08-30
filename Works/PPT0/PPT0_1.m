%生成十个随机数(0到10之间)
a = rand(1,10)*10;
%循环9次，每次将前面数字中最大的放在最后一个
for j=1:9
    for i=1:10-j
        if a(i)>a(i+1)
            b=a(i);
            a(i)=a(i+1);
            a(i+1)=b;
        end
    end
end
a