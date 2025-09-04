function quad_type(A)
% quad_type 判断二次型矩阵A的正定性
% 输出：'正定', '负定', '不定', '半正定', '半负定', '零二次型'

disp('二次型矩阵为：');
disp(A);
[~,T]=schur(A);
d = diag(T);
disp('二次型的标准型为：');
disp(T);

if all(d == 0)
    disp('该二次型为零二次型');
elseif all(d > 0)
    disp('该二次型为正定二次型');
elseif all(d < 0)
    disp('该二次型为负定二次型');
elseif all(d >= 0)
    disp('该二次型为半正定二次型');
elseif all(d <= 0)
    disp('该二次型为半负定二次型');
else
    disp('该二次型为不定二次型');
end
end