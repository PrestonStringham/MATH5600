%Preston Stringham and River Griffin
fprintf('------------------------------ \n')
fprintf('x_0 = 0 \n')
format short
h=2.^-(1:10);
x0=0;
f= @(x)sin(x);
fd = (f(x0+h)-f(x0)) ./ h;
exact = cos(x0);
error = abs(fd-exact);
ratio = [0 error(1:end-1) ./ error(2:end)];
[h' error' ratio']
fprintf('------------------------------ \n')

fprintf('------------------------------ \n')
fprintf('x_0 = 1 \n')
format short
h=2.^-(1:10);
x0=1;
f= @(x)sin(x);
fd = (f(x0+h)-f(x0)) ./ h;
exact = cos(x0);
error = abs(fd-exact);
ratio = [0 error(1:end-1)./error(2:end)];
[h' error' ratio']
fprintf('------------------------------ \n')