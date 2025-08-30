A=rand(4,5)*10
max1=A(1,1);
for i=1:4
    for j=1:5
        if A(i,j)>max1
            max1=A(i,j);
        end
    end
end
fprintf("最大值为%.4f\n",max1)
for i=1:4
    for j=1:5
        if A(i,j)==max1
            fprintf("最大值在%d行%d列\n",i,j)
        end
    end
end