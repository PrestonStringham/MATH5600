%Preston Stringham and River Griffin
function value = compSimpson(func, a, b, N)
    dist = (b-a)/N;
    x = (0:N)*dist + a;
    value = 0;
    for i = 1:length(x)-1
        value = value + ((x(i+1)-x(i))/6)*(func(x(i))+4*func((x(i)+...
            x(i+1))/2)+func(x(i+1)));
    end
end