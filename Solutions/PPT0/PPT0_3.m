sum = 0;
for i=1:20
    sum=sum+factorial(i);
end
disp(vpa(sum,50))