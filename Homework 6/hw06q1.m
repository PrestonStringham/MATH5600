%Preston Stringham and River Griffin

%Format
format short

%Function
f = @(x)exp(x.^2);

%Point
x0=1;

%Exact Solution
exact = exp(x0^2)*2*x0;

%h Values
h=2.^-(1:10);

%Forward Difference
fd = (f(x0+h)-f(x0)) ./ (h);
err_fd = abs(fd-exact);
rate_fd = [0 err_fd(1:end-1) ./ err_fd(2:end)];
plot(h, err_fd)
hold on

%Backward Difference
bd = (f(x0-h)-f(x0)) ./ (-h);
err_bd = abs(bd-exact);
rate_bd = [0 err_bd(1:end-1) ./ err_bd(2:end)];
plot(h, err_bd)
hold on

%Center Differece
cd = (f(x0+h)-f(x0-h)) ./ (2.*h);
err_cd = abs(cd-exact);
rate_cd = [0 err_cd(1:end-1) ./ err_cd(2:end)];
plot(h, err_cd)


title("Finite Difference Methods")

legend("Forward Difference", "Backward Difference", "Centered Difference",...
    'Location', 'northwest');

set(findall(gca, 'Type', 'Line'),'LineWidth',2);

fprintf('----------------------------------------- \n')
fprintf('Error Table')
[h' err_fd' err_bd' err_cd']
fprintf('----------------------------------------- \n')

fprintf('----------------------------------------- \n')
fprintf('Error Rate Table')
[h' rate_fd' rate_bd' rate_cd']
fprintf('----------------------------------------- \n')
