%Preston Stringham and River Griffin

f = @(x)-x.*cos(x);
a = 1;
b = 9;
ua = -1;
ub = 5;
N = 6;
[x,u] = finite_difference_laplace(f, a, b, N, ua, ub)