%Preston Stringham and River Griffin

%Function
f=@(x) 2.*cos(x)-sin(x);

%Function Derivative
dfdx=@(x) -2.*sin(x)-cos(x);

%Tolerance
tol = 1e-12;

%Interval
a=0;
b=3;

%Starting number for Newton's Method
x0=0;

%Bisection Method
[root, data] = bisect(a, b, f, tol);
fprintf('-------------------------- \n');
fprintf('Bisection Method: \n');
root
its = data(end, 1)
fprintf('-------------------------- \n');

%Newton's Method
fprintf('-------------------------- \n');
fprintf("Newton's Method: \n");
[root, its] = newt(f, dfdx, x0, tol)
fprintf('-------------------------- \n');

%Secant Method
fprintf('-------------------------- \n');
fprintf("Secant Method: \n");
[root, its] = secant(f, 0, 0.1, tol)
fprintf('-------------------------- \n');

