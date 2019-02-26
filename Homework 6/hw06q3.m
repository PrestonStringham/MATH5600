%Preston Stringham and River Griffin

f = @(x) -(x.*cos(x));
f_exact = @(x) x.*cos(x)-2.*sin(x);

a = 1;
b = 9;
ua = -1;
ub = 5;

%Exact solution
xx=linspace(a,b,1000);
yexact=f_exact(xx);
plot(xx,yexact, 'k-')
hold on

%N=6 values
N = 6;
[x,u] = finite_difference_laplace(f, a, b, N, ua, ub);
plot(x,u,'x-')
hold on

%N=12 values
N=12;
[x,u] = finite_difference_laplace(f, a, b, N, ua, ub);
plot(x,u,'x-')
hold on

%N=24 values
N=24;
[x,u] = finite_difference_laplace(f, a, b, N, ua, ub);
plot(x,u,'x-')
hold on