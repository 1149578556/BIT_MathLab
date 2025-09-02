clc;
A=[1 2 3;2 2 1;3 2 2];           % 定义3x3矩阵A
n=length(A);                      % 获取矩阵A的阶数n
A_det=det(A);                     % 计算矩阵A的行列式
adjA=zeros(size(A));              % 初始化伴随矩阵adjA，大小与A相同
for i=1:n                         % 遍历每一行
    for j=1:n                     % 遍历每一列
        B=A;                      % 复制A到B
        B(i,:)=[];                % 删除第i行
        B(:,j)=[];                % 删除第j列
        adjA(j,i)=det(B)*(-1)^(i+j); % 计算代数余子式并放到伴随矩阵的(j,i)位置
    end
end
A_inv=adjA/A_det;                 % 计算A的逆矩阵