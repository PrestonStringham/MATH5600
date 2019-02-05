%Preston Stringham & River Griffin
M = [10^-14 1 0; 1 0 0; 0 1 1];
b = [2; 1; 5];

xref = [1;2;3]; %Analytical solution solved by hand

%Solve using MATLAB 'backslash'
disp('Error for ''Backslash'' computation:')
x = M\b
error = norm(x-xref)

%Solve with MakeLU
disp('Error for MakeLU computation:')
[L,U] = MakeLU(M);
y = L\b;
x = U\y
error = norm(x-xref)

%Solve with MakePLU. P*Mx=P*b
%PMx = Pb
%LUx = Pb
%Ly = Pb
%Ux = y
disp('Error for MakePLU computation:')
[L,U,P] = MakePLU(M);
b = P*b;
y = L\b;
x = U\y
error = norm(x-xref)
