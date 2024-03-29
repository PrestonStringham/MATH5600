%Preston Stringham and River Griffin
clc; clear;

%Interval
x = [0.5, 1];

f1 = @(x) (sin(x)).^2;
f2 = @(x) cos(x); 

%Midpoint Rule
MIDF1 = (x(2)-x(1))*f1(((x(2)+x(1))/2));
MIDF2 = (x(2)-x(1))*f2(((x(2)+x(1))/2));


%Trapezoid Rule
TRF1 = ((x(2)-x(1))/2)*(f1(x(1)) + f1(x(2)));
TRF2 = ((x(2)-x(1))/2)*(f2(x(1)) + f2(x(2)));

%Actual values for the functions integrated using MATLAB integral function
q1 = integral(f1,x(1),x(2));
q2 = integral(f2,x(1),x(2));


%error for each calculated value of midpoint and trapazoid to the acutal
errorMIDF1 = abs(q1 - MIDF1)
errorTRF1 = abs(q1 - TRF1)

errorMIDF2 = abs(q2 - MIDF2)
errorTRF2 = abs(q2 - TRF2)

%Yes, the theory is correct. Setting up the Midpoint and Trapazoid methods
%for the two functions above, computing the actual value of the 
%integral of the two functions, computing the errors
%and comparing the errors - Midpoint Rule does indeed have half the
%error of the Trapazoid Rule.
