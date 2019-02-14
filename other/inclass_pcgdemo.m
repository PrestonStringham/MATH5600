A=delsq(numgrid('L',128));
n=size(A,1)
b=randn(n,1);
tic;
[x,FLAG,RELRES,ITER]=pcg(A,b,1e-8,2000);
toc
residual=norm(A*x-b)
ITER=ITER

L=ichol(A, struct('type','ict','droptol',1e-3));
%nnz(A),nnz(L)
tic;
prec=@(u) L'\(L\u);
[x,FLAG,RELRES,ITER]=pcg(A,b,1e-8,2000,prec);
toc
residual=norm(A*x-b)
ITER=ITER