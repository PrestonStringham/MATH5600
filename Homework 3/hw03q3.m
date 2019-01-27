%Preston Stringham & River Griffin
for k=5:7
    k.^2 %display number of elements
    A=full(delsq(numgrid('B', k.^2)));
    b=zeros(length(A),1)+1;
    startdecom=tic; %start timer for decomposition
    [L,U] = MakeLU(A);
    toc(startdecom) %show time to decompose matrix A
    startsolve = tic; %start timer for solving
    y=ForwardSubstitution(L,b); %solve for y
    x=BackSubstitution(U,y); %solve for x
    toc(startsolve) %show time to solve
    r = A*x-b;
    disp('Norm: ')
    norm(r) %display norm
end

