A=[-3 3 2 -1;-1 1 5 -2;-6 3 6 0;8 7 4 1];
[V D]=eig(A);
disp('特征值为：');
disp((diag(D))');
disp('对应的特征向量为：');
disp(V);
disp('det(V) = ');
disp(det(V));
if det(V)==0
    disp('特征向量线性相关');
    disp('因此A不可对角化');
else
    disp('特征向量线性无关');
    disp('因此A可对角化');
    disp('可逆矩阵P为：');
    disp(V);
end 

B=[-1 0 0 0;0 -1 0 0;2 2 0 -0;2 0 1 2];
[V D]=eig(B);
disp('特征值为：');
disp((diag(D))');
disp('对应的特征向量为：');
disp(V);
disp('det(V) = ');
disp(det(V));
if det(V)==0
    disp('特征向量线性相关');
    disp('因此B不可对角化');
else
    disp('特征向量线性无关');
    disp('因此B可对角化');
    disp('可逆矩阵P为：');
    disp(V);
end