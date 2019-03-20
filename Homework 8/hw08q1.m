%Preston Stringham and River Griffin

%Matrices
A = [0 2 3; 4 5 6; 7 8 -9]
B = [2 3 2; 1 0 -2; -1 -3 -1]

%Starting vector
start = [1;2;3]

%Tolerance
tol = 1e-8

[eval, evec, itcount] = PowerMethod(A, start, tol)

[V, D] = eig(A)

% start = [1;1;1] BAD STARTING VECTOR
start = [2; -2; 2]

[eval, evec, itcount] = PowerMethod(B, start, tol)

[V, D] = eig(B)