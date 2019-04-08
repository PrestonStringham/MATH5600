function value = compMidpoint(f, a, b, n)
    x = linspace(a,b,n);
    h = (b-a) / (n-1); % or = x(2)-x(1)
    value = 0;
    for i = 1:length(x)-1
        value = value + h*f((x(i)+x(i+1)/2));
    end
end