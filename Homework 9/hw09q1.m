%Preston Stringham and River Griffin

%Part (a)
px = [0 2 3 4 5 6 7]
py = [-1 -2 -1 3 -1 -1 5]

n = length(px);

A=zeros(n,n);
for i=1:n
    A(:,i)=px.^(i-1);
end
c=A\py';
c

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
plot(px, py, '-', px, py, 'x')
hold on


%Part (b)

%Condition number
num = cond(A, inf)

%Part (c)

%Monomial interpolation
pn(1)

ppval(PP, 1)

m = (py(2)-py(1))/(px(2)-px(1))

lin = m*1 - 1

legend("Monomial", "Spline", "Piecewise Linear", "Actual Linear", "Points")
%Part (d)
