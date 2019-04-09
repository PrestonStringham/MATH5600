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

fprintf('------------------------------------------\n');
fprintf('Gauss Quadrature Error Analysis \n');

%Display exact solution and approximated solution -> 12 decimal places
fprintf('Exact: %.12f\nApproximate: %.12f\n',exact, approx);

%Create information table
valueTable = [n' h errs errate]

fprintf('------------------------------------------\n');

%---------------------------Conclusion---------------------------------
%Yes, the composite Gauss quadrature rule converges with O(h^4). Based on
%the error rate that is displayed in the table.
%----------------------------------------------------------------------


%Part d).

%Reset variables for Composite Simpson
errs=length(n);
h=length(n);
approx = 0;

%Composite Simpson
for i=1:length(n)
    approx = compSimpson(f, a, b, n(i));
    h(i,:) = (b-a)/n(i);
    errs(i,:) = abs(exact - approx);
end

errate = [0;errs(1:end-1)]./errs;

fprintf('------------------------------------------\n');
fprintf('Composite Simpson Error Analysis \n');
fprintf('Exact: %.12f\nApproximate: %.12f\n',exact, approx);

valueTable = [n' h errs errate]

fprintf('------------------------------------------\n');

%Reset variables for Composite Midpoint
errs=length(n);
h=length(n);
approx = 0;

%Composite Midpoint
for i=1:length(n)
    approx = compMidpoint(f, a, b, n(i));
    h(i,:) = (b-a)/n(i);
    errs(i,:) = abs(exact - approx);
end

errate = [0;errs(1:end-1)]./errs;

fprintf('------------------------------------------\n');
fprintf('Composite Midpoint Error Analysis \n');
fprintf('Exact: %.12f\nApproximate: %.12f\n',exact, approx);

valueTable = [n' h errs errate]

fprintf('------------------------------------------\n');

%---------------------------Conclusion---------------------------------
%Yes, the composite Simpson quadrature rule converges with O(h^4) 
%based on the error rate that is displayed in the table. The composite
%Midpoint rule converges with O(h), based on our results.
%----------------------------------------------------------------------