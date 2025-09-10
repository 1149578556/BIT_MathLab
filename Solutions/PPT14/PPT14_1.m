c=[40 45 24];
A=[2 3 1;3 3 2];
b=[100;120];
VLB=[0 0 0];
x=linprog(-c,A,b,[],[],VLB,[]);
disp('最优解为：');
disp(x);
disp('最优值为：');
disp(c*x);