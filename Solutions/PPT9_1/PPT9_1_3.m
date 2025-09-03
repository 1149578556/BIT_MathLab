format rat
A1=[2 3 5;3 7 4;1 2 2]
b1=[1;3;2]
rank(A1)
rank([A1 b1])
B1=null(A1,'r') %B1是零矩阵
x1=pinv(A1)*b1
%于是通解为 x=x1

A2=[2 7 3 1;3 5 2 2;9 4 1 1];
b2=[1;3;2];
rank(A2)
rank([A2 b2])
B2=null(A2,'r')
x2=pinv(A2)*b2
%于是通解为 x=x2+k*B2, k为任意实数