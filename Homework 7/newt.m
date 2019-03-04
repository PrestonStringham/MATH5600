function [root,numits] = newt(fun,funderiv,x0,tol)
% solve the equation fun(x)=0 using Newton's method with starting
% value x0 up to the tolerance tol. 'funderiv' is the derivative of
% 'fun'

xold=x0+1; % initialize to something other than x0 to enter loop
xnew=x0;
numits = 0;

while ( abs( xnew-xold ) > tol )
    % perform the Newton iteration
    fxnew = fun(xnew);
    fprimexnew = funderiv(xnew);
    numits = numits+1;
   
    xold = xnew;
    xnew = xnew - fxnew/fprimexnew;
end

root = xnew;