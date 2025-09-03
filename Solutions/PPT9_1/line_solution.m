function [x,y]=line_solution(A,b);

% line_solution 求解线性方程组 Ax=b 的通解
% x: 特解（唯一解/最小二乘解/齐次解）
% y: 空矩阵/基础解系（无穷多解时）

    b_len=length(b);
    if all(b==0)
        disp('方程组齐次');
        B=null(A,'r');%求A为系数矩阵的齐次方程组的基础解系
        if isempty(B)
            disp('方程组有唯一解');
            x=zeros(b_len,1);
            y=[];
        else
            disp('方程组有无穷多解');
            x=zeros(b_len,1);
            y=B;
        end

    else
       disp('方程组非齐次');
        B=null(A,'r');
        if rank(A)==rank([A b])
            if isempty(B)
                disp('方程组有唯一解');
                x=A\b;
                y=[];
            else
                disp('方程组有无穷多解');
                x=A\b;
                y=B;
            end
        else
            disp('方程组无解，输出方程组最小二乘解');
            x=A\b;
            y=[];
        end
    end
end