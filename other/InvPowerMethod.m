function [eval,evec,itcount] = InvPowerMethod(A, x0, tol)

% normalize initial condition
x = x0/norm(x0);

% keep track of Rayleigh quotient as approx of lambda
rq = x' * (A*x);

% will do many solves with A, so prefactor
[L,U,P]=lu(A);

itcount=0;
while norm( A*x - rq*x)/norm(A*x) >tol    
    itcount=itcount+1;
    
    % solve Ay=x -> PAy=Px -> LUy = Px
    y = U \ (L \ P*x);
    % normalize
    x = y / norm(y);
    
    rq = x' * (A*x);
end
eval=rq;
evec=x;

