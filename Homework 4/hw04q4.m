M = [10^-14 1 0; 1 0 0; 0 1 1];
b = [2; 1; 5];

%Solve using MATLAB 'backslash'
x = M/b'
%norm(x-xref)

%Solve with MakeLU
[L,U] = MakeLU(M);
y = L/b';
x = U/y'
%norm(x-xref)

%Solve with MakePLU. P^-1*M=P^-1*b
[L1,U1,P1] = MakePLU(M);
b1 = P1*b;
y = L1/b1';
x = U1/y'
%norm(x-xref)






