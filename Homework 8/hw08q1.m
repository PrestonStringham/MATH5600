%Preston Stringham and River Griffin

%Matrices
A = [0 2 3; 4 5 6; 7 8 -9];
B = [2 3 2; 1 0 -2; -1 -3 -1];

%Starting vector
start = [1;2;3]

%Tolerance
tol = 1e-8;

%Observe eigenvalue
[V, D] = eig(A)

[eval, evec, itcount] = PowerMethod(A, start, tol)

%Bad starting vector
%start = [1;1;1]

%Good starting vector
start = [2; -2; 2]

%Observe eigenvalues
[V, D] = eig(B)

[eval, evec, itcount] = PowerMethod(B, start, tol)