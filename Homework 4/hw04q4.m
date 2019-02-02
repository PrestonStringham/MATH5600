M = [10^-14 1 0; 1 0 0; 0 1 1]
b = [2; 1; 5]

xref=M/b';

[L,U] = MakeLU(M);
[L1,U1,P1] = MakePLU(M);




