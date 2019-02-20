% approximate sin(x) for x=1.1 with 
% Taylor polynomial with x0=1

f = @(x) sin(x);
fdx = @(x) cos(x);
fdxdx = @(x) -sin(x);
fdxdxdx = @(x) -cos(x);

x0=1;
x=1.1;

approx = f(x0)+(x-x0)*fdx(x0)+(x-x0)^2*fdxdx(x0)/2;
exact = f(x);
error = abs(approx - exact);
fprintf('approx=%f exact=%f error=%f\n', approx, exact, error)
bound=1/6*(x-x0)^3
bound2=cos(1)/1000/6*(x-x0)^3 % cos(c) <= cos(1)

xx = linspace(0,2*pi,400);
yy1 = sin(xx);
yy2 = f(x0)+(xx-x0)*fdx(x0)+(xx-x0).^2*fdxdx(x0)/2;

plot(x0,f(x0),'o',xx,yy1,'k-',xx,yy2,'b-',x,approx,'x')
legend('','sin(x)','Taylor approximation')
ylim([-2,2])
