% approximate f(x)=exp(sin(x)) at x=0.1

format short
h=2.^-(1:10);

x=0.1;
f= @(x) exp(sin(x));

fd = ( f(x+h)-f(x) ) ./ h;
% cd = ( f(x+h)-f(x-h) ) ./ (2*h);

exact = cos(x)*exp(sin(x)); % =f'(x)

error = abs(fd-exact);

ratio = [ 0 error(1:end-1) ./ error(2:end)];
[h' cd' error' ratio']