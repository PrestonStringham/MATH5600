%Preston Stringham and River Griffin
function [x, numits] = secant(func, x0, x1, tol)
    xk_1 = x0;
    xk = x1;
    xk1 = (xk_1*func(xk) - xk*func(xk_1))/(func(xk) - func(xk_1));
    numits = 1;
    while(abs(func(xk1)) > tol)
        xk=xk_1;
        xk = xk1;
        xk1 = (xk_1*func(xk) - xk*func(xk_1))/(func(xk) - func(xk_1));
        numits = numits + 1;
    end
    x=xk;
end