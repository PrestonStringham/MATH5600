x = [1 1.9 .5 3.0 4.0 7.0]';
y = [0.5 1.0 1.01 1.6 2.0 3.45]';

plot(x,y,'or')
xlim([0,9])
ylim([0,4])

A=[x.^0 x];
b=y;

% solve normal equations:
a=(A'*A)\(A'*b)

% plot line:
L=@(x) a(1)+a(2)*x;
hold on
plot([0 8],[L(0), L(8)], '-')
hold off