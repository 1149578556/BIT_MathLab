a1=[1;1;3;2];
a2=[-1;1;-1;3];
a3=[5;-2;8;9];
a4=[-1;3;1;7];
T=[a1 a2 a3 a4];
T_rank=rank(T)
if T_rank==length(T)
    disp('T线性无关')
else
    disp('T线性相关')
end

[R,jb]=rref(T);
T(:,jb);
disp('T的一个极大线性无关组为：')
T(:,jb) % 显示极大线性无关组

x = T(:,jb)\a4; 
disp('a4由极大线性无关组线性表示的系数为：');
disp(x);
