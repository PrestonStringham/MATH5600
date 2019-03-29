% cubic spline interpolation

px = [0 1 2 4 5 6 7];
py = [1 7 2 1 2 0 1];

PP=spline(px,py);

xx=linspace(0,7);
yy=ppval(PP,xx);

%c=PP.coefs(1,:)
%p1x=linspace(0,1);
%p1y=c(4) + c(3).*p1x + c(2).*p1x.^2 + c(1).*p1x.^3;

plot(px,py,'ro',xx,yy,'k-')