%Preston Stringham & River Griffin
for k=5:7
    A=full(delsq(numgrid('B', k.^2)));
    b=zeros(length(A),1)+1;
    startdecom=tic; %start timer for decomposition
    [L,U] = MakeLU(A);
    decompose=toc(startdecom); %grab time to solve
    startsolve = tic; %start timer for solving
    y=ForwardSubstitution(L,b); %solve for y
    x=BackSubstitution(U,y); %solve for x
    solve=toc(startsolve); %grab time to solve
    r = A*x-b;
    resid=norm(r); %display norm
    formatspec='Number of elements: %d \nDecompose Time: %f \nSolve Time: %f \nNorm: %s \n\n';
    fprintf(formatspec, k.^2, decompose, solve, resid); %display info
end

