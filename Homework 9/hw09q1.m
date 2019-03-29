%Preston Stringham and River Griffin
clc; clear;
%Part (a)
px = [0 2 3 4 5 6 7];
py = [-1 -2 -1 3 -1 -1 5];

n = length(px);

A=zeros(n,n);
for i=1:n
    A(:,i)=px.^(i-1);
end
c=A\py';
c;

%Monomial interpolation
pn= @(x) c(1) + c(2)*x + c(3)*x.^2 + c(4)*x.^3 + c(5)*x.^4 + c(6)*x.^5 ...
    + c(7)*x.^6;
xx=linspace(0,7);
yy=pn(xx);

plot(xx, yy, '-')
hold on

%Spline interpolation
PP=spline(px,py);

xx=linspace(0,7);
yy=ppval(PP,xx);

plot(xx, yy, '-')
hold on

%Piecewise linear interpolation
plot(px, py, '-')
hold on


%Part (b)

%Condition number
cond_num = cond(A, inf)

%Part (c)

%Monomial interpolation
monomial_at_1 = pn(1)

%Spline interpolation
spline_at_1 = ppval(PP, 1)

m = (py(2)-py(1))/(px(2)-px(1));
y = @(x) m*x - 1;
xx = linspace(0,2);
yy = y(xx);

%Linear interpolation
linear_at_1 = y(1)

plot(xx, yy, '-', px, py, 'x')
legend("Monomial", "Spline", "Fake Piecewise Linear",...
    "Actual Piecewise Linear", "Points");

%Part (d)
x0 = 1;
h = 1e-3;

cd_monomial = (pn(x0+h)-pn(x0-h)) ./ (2.*h)

cd_spline = (ppval(PP, (x0+h))-(ppval(PP, (x0-h)))) ./ (2.*h)

cd_linear = (y(x0+h)-y(x0-h)) ./ (2.*h)