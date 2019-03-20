%Preston Stringham and River Griffin

%Function
f = @(x) sin(x) + 5*x.^2 - exp(x);

%Tolerance
tol = 1e-6;

%First guess
a = -5;
b = 0;
root1 = bisect(a,b,f,tol)

%From the first guess, change a and b to begin finding second root.
a = 0;
b = 1;
root2 = bisect(a,b,f,tol)

%From the second guess, change a and b to begin finding the third root.
a = 1;
b = 5;
root3 = bisect(a,b,f,tol)