epsilon=0.01;
sum=1;
n=0;
term=1;
while term>epsilon
    n=n+1;
    term=term/n;
    sum=sum+term;
end
sum