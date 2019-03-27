function [eval,evec,itcount] = PowerMethod(A, x0, tol)

% normalize initial condition
x = x0/norm(x0);

% keep track of Rayleigh quotient as approx of lambda
rq = x' * (A*x);

itcount=0;
while norm( A*x - rq*x)/norm(A*x) >tol    
    itcount=itcount+1;
    
    y = A*x;
    x = y / norm(y);
    
    rq = x' * (A*x) / (x'*x);
end
eval=rq;
evec=x;

