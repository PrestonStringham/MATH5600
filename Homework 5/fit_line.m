%Preston Stringham and River Griffin
function a = fit_line(x,y)
    A=[x.^0 x];
    b=y;
    a=(A'*A)\(A'*b);
end