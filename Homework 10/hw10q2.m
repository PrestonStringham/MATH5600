%Preston Stringham and River Griffin

clc;clear;
%Part c).

%Create funciton and interval
f = @(x) 5 + cos(10*x);
a = 1;
b = 5;

%Actual value of the integral
exact = integral(f,a,b);

%Value of n's
n=2.^(1:9);

%Allocate space for matrices
errs=length(n);
h=length(n);
approx = 0;

%Compute values for table of the info
for i=1:length(n)
   approx = compGauss(f,a,b,n(i));
   h(i,:) = (b-a)/n(i);
   errs(i,:) = abs(exact - approx);
end

errate = [0;errs(1:end-1)]./errs;

%Display exact solution and approximated solution -> 12 decimal places
fprintf('Exact: %.12f\nApproximate: %.12f\n',exact, approx);

%Create information table
valueTable = [n' h errs errate]


%Part d).
