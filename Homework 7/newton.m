function [root,numits] = newton(fun,gradfun,x0,tol)
    % Solve fun(x)=0 using Newton's method
    % We are given the function and its gradient gradfun
    % Starting from the initial guess x0.
    x0 = x0(:); % this will force x0 to be a column vector
    xold = x0+1; % this needs to be ~= x0 so that we enter the while loop
    xnew = x0;
    numits = 0;
    n = length(x0);
    while norm(xnew-xold)>tol
        gradfxk = gradfun(xnew);
        fxk = fun(xnew);
        fxk = fxk(:); % this will force fxk to be a column vector
        [a,b]=size(fxk);
        
        if a~=n || b~=1
            error('function has wrong dimension')
        end
        
        [a,b]=size(gradfxk);
        
        if a~=n || b~=n
            error('gradient has wrong dimension')
        end
        
        xold = xnew;
        % x_k+1 = x_k ? (grad f(xk))^{?1} * f(xk), % but implement as a linear solve
        xnew = xnew - gradfxk \ fxk;
        numits = numits+1;
        if (numits>=100)
        error('No convergence after 100 iterations', numits);
        end
    end
    root = xnew;
end