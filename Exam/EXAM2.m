%%1
A=[6 2 3 4 5;
2 -3 7 10 13;
3 5 11 -16 21;
2 -7 7 7 2;
7 3 -5 3 10;
13 5 -2 7 15];
b=[1;2;3;4;5;6];
rank_A=rank(A);
rank_Ab=rank([A b]);
disp(['rank(A)=',num2str(rank_A)]);
disp(['rank([A b])=',num2str(rank_Ab)]);
disp('方程组有唯一解');
x=A\b;
disp('解为:');
disp(x);

%%2
G=poissrnd(5,10,10);
disp('G为参数为5的10*10泊松分布随机矩阵:');
disp(G);
[V D]=eig(G);
disp('G的特征值为:');
disp(diag(D));
disp('G的特征向量为:');
disp(V);

b=[你的学号，用分号分隔];
rank_G=rank(G);
rank_Gb=rank([G b]);
disp(['rank(G)=',num2str(rank_G)]);
disp(['rank([G b])=',num2str(rank_Gb)]);
if rank_G==rank_Gb
    if rank_G==size(G,2)
        disp('方程组有唯一精确解解');
        x=G\b;
        disp('解为:');
        disp(x);
    else
        disp('方程组有无穷多解');
    end
else
    disp('方程组最小二乘解（近似解）为:');
   x=G\b;
   disp(x);
end
