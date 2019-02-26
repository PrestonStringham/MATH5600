%Preston Stringham and River Griffin

%Source Function and Exact Solution
f = @(x) -(x.*cos(x));
f_exact = @(x) x.*cos(x)-2.*sin(x)+((3/4)-(1/4)*sin(1)+(1/8)*cos(1)+(1/4)*sin(9)-(9/8)*cos(9)).*x-(7/4)-(1/4)*sin(9)+(9/8)*cos(9)+(9/4)*sin(1)-(9/8)*cos(1);

%Boundary Conditions
a = 1;
b = 9;
ua = -1;
ub = 5;

%Exact Solution Plot
xx=linspace(a,b,1000);
yexact=f_exact(xx);
plot(xx,yexact, 'k-')
hold on

%N=6 Values
N = 6;
[x1,u1] = finite_difference_laplace(f, a, b, N, ua, ub);
plot(x1,u1,'x-')
hold on

%N=12 Values
N=12;
[x2,u2] = finite_difference_laplace(f, a, b, N, ua, ub);
plot(x2,u2,'x-')
hold on

%N=24 Values
N=24;
[x3,u3] = finite_difference_laplace(f, a, b, N, ua, ub);
plot(x3,u3,'x-')
hold on

%Set Plot Title, Legend, and LineWidth.
title("BVP Approximations")
legend("Exact Solution", "N=6", "N=12", "N=24", 'Location', 'northwest');
set(findall(gca, 'Type', 'Line'),'LineWidth',1.5);

%Compute h Values
h1 = x1(2)-x1(1);
h2 = x2(2)-x2(1);
h3 = x3(2)-x3(1);
h = [h1 h2 h3];

%Compute Errors
error1 = max(abs(f_exact(x1) - u1'));
error2 = max(abs(f_exact(x2) - u2'));
error3 = max(abs(f_exact(x3) - u3'));
error = [error1 error2 error3];

%Compute Convergence Rate
rate = [0 error(1:end-1) ./ error(2:end)];

[h' error' rate']

