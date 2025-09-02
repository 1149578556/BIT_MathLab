%%1
A = [2 1 -3 -1; 3 1 0 7; -1 2 4 -2; 1 0 -1 5];
B = [2 3 5 4; 1 -1 8 6; -3 4 6 -7; 2 3 5 4];

%%2
A_minus_B = A - B;      % A-B
A_plus_B = A + B;       % A+B
A_times_B = A * B;      % A*B
A_det = det(A);         % |A|
A_inv = inv(A);         % A^-1

disp('A-B ='); disp(A_minus_B);
disp('A+B ='); disp(A_plus_B);
disp('A*B ='); disp(A_times_B);
disp('|A| ='); disp(A_det);
disp('A^-1 ='); disp(A_inv);

%%3
C=[A B]

%%4
D = C([1,2,4],[3,5,7])

%%5
E=C(:,[3,5])

%%6
eye(size(A))
ones(size(A))
zeros(size(A))

%%7
A(2,3)