U=unifrnd(0,1,1,100);
for i=1:100
    if U(i)<=0.5
        Y(i)=0;
    elseif U(i)<=0.6
        Y(i)=1;
    elseif U(i)<=0.8
        Y(i)=2;
    elseif U(i)<=0.9
        Y(i)=3;
    elseif U(i)<=0.95
        Y(i)=4;
    elseif U(i)<=1
        Y(i)=5;
    end
end
disp('Y=');
disp(Y);