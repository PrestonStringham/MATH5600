% interpolation demo

% x and y values of the 5 points to interpolate:
px = [0 1 2 4];
py = [1 7 2 1];

n = length(px);

A=zeros(n,n);
for i=1:n
    A(:,i)=px.^(i-1);
end
c=A\py';
c

% polynomial interpolation:
pn= @(x) c(1) + c(2)*x + c(3)*x.^2 + c(4)*x.^3;
xx=linspace(-1,5);
yy=pn(xx);

plot(px,py,'o',px,py.*0,'x',xx,yy,'k-')
hold on
xlim([-1,5])
ylim([-5,10])

% %explore condition number:
% n=12;
% px=1:n;
% A=zeros(n,n);
% for i=1:n
%     A(:,i)=px.^(i-1);
% end
% cond(A)

% Lagrange interpolant:
l1= @(x) (x-px(2)).*(x-px(3)).*(x-px(4))./ ...
    ( (px(1)-px(2)) * (px(1)-px(3)) * (px(1)-px(4)) ); 
l2= @(x) (x-px(1)).*(x-px(3)).*(x-px(4))./ ...
    ( (px(2)-px(1)) * (px(2)-px(3)) * (px(2)-px(4)) ); 
l3= @(x) (x-px(1)).*(x-px(2)).*(x-px(4))./ ...
    ( (px(3)-px(1)) * (px(3)-px(2)) * (px(3)-px(4)) ); 
l4= @(x) (x-px(1)).*(x-px(2)).*(x-px(3))./ ...
    ( (px(4)-px(1)) * (px(4)-px(2)) * (px(4)-px(3)) ); 

yy=py(1)*l1(xx)+py(2)*l2(xx)+py(3)*l3(xx)+py(4)*l4(xx);
plot(xx,yy,'r--')
hold off