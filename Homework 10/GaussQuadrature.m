%Preseton Stringham and River Griffin
function value = GaussQuadrature(f, a, b)
    x = ((3+sqrt(3)))/6*a + ((3-sqrt(3))/6*b);
    y = ((3-sqrt(3)))/6*a + ((3+sqrt(3))/6*b);
    value = (b-a)/2*(f(x) + f(y));
end