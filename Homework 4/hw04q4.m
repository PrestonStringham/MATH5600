M = [10^-14 1 0; 1 0 0; 0 1 1]
b = [2; 1; 5]

x_ref=M/b'; %Not sure what x_ref is supposed to be. Which is the analytical solution?

%Solve with MakeLU
[L,U] = MakeLU(M);
y = L/b';
x = U/y';

norm(x - xref)

%Solve with MakePLU
[L1,U1,P1] = MakePLU(M);






