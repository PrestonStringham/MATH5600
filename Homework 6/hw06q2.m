%Preston Stringham and River Griffin

%Format
format short

%Function
f = @(x)exp(sin(x));

%Point
x0=1;

%Exact Solution
exact = exp(sin(x0))*(cos(x0).^2 - sin(x0));

%h Values
h=2.^-(1:10);

%3-Point Center Difference
cd = (f(x0-h) - 2.*f(x0) + f(x0+h)) ./ (h.^2);
err_cd = abs(cd-exact);
rate_cd = [0 err_cd(1:end-1) ./ err_cd(2:end)];

fprintf('----------------------------------------- \n')
[h' err_cd' rate_cd']

fprintf('The method converges of order O(h^2). \n')
fprintf('----------------------------------------- \n')