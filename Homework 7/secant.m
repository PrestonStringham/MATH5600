%Preston Stringham and River Griffin
%xk_1 means x_{k-1}, xk means x_k, xk1 means x_{k+1}
function [x, numits] = secant(func, x0, x1, tol)
    xk_1 = x0;
    xk = x1;
    xk1 = (xk_1*func(xk) - xk*func(xk_1))/(func(xk) - func(xk_1));
    numits = 1;
    while(abs(func(xk1)) > tol)
        xk_1 = xk;
        xk = xk1;
        xk1 = (xk_1*func(xk) - xk*func(xk_1))/(func(xk) - func(xk_1));
        numits = numits + 1;
    end
    x=xk1;
end