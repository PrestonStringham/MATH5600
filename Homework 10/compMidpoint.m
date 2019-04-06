function value = compMidpoint(f, a, b, n)
    dist = (b-a)/n;
    x = (0:n)*dist + a;
    value = 0;
    for i = 1:length(x)-1
        value = value + ((x(i+1)-x(i))/2)*(f((x(i)+x(i+1)/2)));
    end
end