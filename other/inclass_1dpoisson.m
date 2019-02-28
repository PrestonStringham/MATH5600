% 1d poisson's equation

% solve u'' = f(x)
% u(a) =ua
% u(b) =ub

f=@(x) (2+x).*exp(x);
ua=-exp(-1);
ub=exp(1);
a=-1;
b=1;
N=10;

x=linspace(a,b,N);
h=x(2)-x(1);
A=eye(N-2,N-2).*(-2);
%A= ...?
for i=1:N-3
    A(i,i+1) = 1;
    A(i+1,i) = 1;
end

B=zeros(N-2,1);
for i=1:N-2
    B(i)=h^2*f(x(i+1));
end
B(1)=B(1)-ua;
B(end)=B(end)-ub;

u = A\B;

u=[ua; u; ub];
xx=linspace(a,b,1000);
yexact=xx.*exp(xx);
plot(x,u,'x-', xx,yexact, 'k-')
