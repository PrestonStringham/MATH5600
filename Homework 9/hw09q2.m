%Preston Stringham and River Griffin
clc; clear;

%Interval
x = [0.5, 1];

f1 = @(x) sin(x.^2);
f2 = @(x) cos(x); 

%Midpoint Rule
MIDF1 = (x(2)-x(1))*f1(((x(2)+x(1))/2))
MIDF2 = (x(2)-x(1))*f2(((x(2)+x(1))/2))


%Trapezoid Rule
TRF1 = ((x(2)-x(1))/2)*(f1(x(1)) + f1(x(2)))
TRF2 = ((x(2)-x(1))/2)*(f2(x(1)) + f2(x(2)))

%Actual values for the functions integrated using MATLAB integral function

q1 = integral(f1,x(1),x(2));
q2 = integral(f2,x(1),x(2));


%error for each calculated value from midpoint to trapazoid

errorMIDF1 = abs(q1 - MIDF1)
errorMIDF2 = abs(q2 - MIDF2)

errorTRF1 = abs(q2 - TRF1)
errorTRF2 = abs(q2 - TRF2)
