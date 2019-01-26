k=15;
A=full(delsq(numgrid('B', k)));
b=zeros(k,1)+1
[L,U] = MakeLU(A)
x=ForwardSubstitution(A,b)
