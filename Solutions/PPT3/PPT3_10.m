x1=-2:0.01:2;
x2=-3:0.01:3;
subplot(1,3,1);plot(x1,f1(x1));grid on;
subplot(1,3,2);plot(x2,f2(x2));grid on;
subplot(1,3,3);plot(x2,f3(x2));grid on;
%f1的极值点
[x1_1,f1_1]=fminsearch(@(x)-f1(x),-1.47);
x1_1
f1_1=-f1_1  %这两句将极大值的相反数转为极大值输出
[x1_2,f1_2]=fminsearch(@f1,-0.76)
[x1_3,f1_3]=fminsearch(@(x)-f1(x),0);
x1_3
f1_3=-f1_3
[x1_4,f1_4]=fminsearch(@f1,1.58)

[x2_1,f2_1]=fminsearch(@(x)-f2(x),-2);
x2_1
f2_1=-f2_1
[x2_2,f2_2]=fminsearch(@f2,0) %这也说明0附近没有极值点

[x3_1,f3_1]=fminsearch(@f3,0)
[x3_2,f3_2]=fminsearch(@(x)f3(x),1);
x3_2
f3_2=-f3_2
[x3_3,f3_3]=fminsearch(@f3,2)


function f=f1(x)
    f=(x.^2).*sin(x.^2-x-2);
end
function f=f2(x)
    f=3*x.^5-20*x.^3+10;
end
function f=f3(x)
    f=abs(x.^3-x.^2-x-2);
end