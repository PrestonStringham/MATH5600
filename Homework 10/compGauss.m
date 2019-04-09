%Preston Stringham and River Griffin
function value = compGauss(f,a,b,n)
    dist = (b-a)/n;
    x = (0:n)*dist + a;
    value = 0;
    for i = 1:length(x)-1
        value = value + GaussQuadrature(f,x(i),x(i+1));
    end
end