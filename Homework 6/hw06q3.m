%Preston Stringham and River Griffin

%Source Function and Exact Solution
f = @(x) -(x.*cos(x));
f_exact = @(x) x.*cos(x)-2.*sin(x)+((3/4)-(1/4)*sin(1)+(1/8)*cos(1)+(1/4)*sin(9)-(9/8)*cos(9)).*x-(7/4)-(1/4)*sin(9)+(9/8)*cos(9)+(9/4)*sin(1)-(9/8)*cos(1);

%Boundary Conditions
a = 1;
b = 9;
ua = -1;
ub = 5;

%N=6 Values
N_max = 8;
j = 1;
for(i = 2.^(0:N_max)*6)
    [x,u] = finite_difference_laplace(f, a, b, i, ua, ub);
    h(j) = x(2)-x(1);
    error(j) = max(abs(f_exact(x) - u'));
    j=j+1;
    if(i == 6 || i == 12 || i == 24)
       plot(x,u,'x-');
       hold on
    end
end

rate = [0 error(1:end-1) ./ error(2:end)];

%Exact Solution Plot
xx=linspace(a,b,1000);
yexact=f_exact(xx);
plot(xx,yexact, 'k-')
hold on

%Set Plot Title, Legend, and LineWidth.
title("BVP Approximations")
legend("Exact Solution", "N=6", "N=12", "N=24", 'Location', 'northwest');
set(findall(gca, 'Type', 'Line'),'LineWidth',1.5);

fprintf('----------------------------------------- \n')
[h' error' rate']
fprintf('The method converges of order O(h^2). \n')

fprintf('----------------------------------------- \n')

