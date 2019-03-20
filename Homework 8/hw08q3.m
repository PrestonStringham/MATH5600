b = [0.3 0.3 0.3 0.1];

%Death rates for part a
%d = [0.1 0.2 0.5 0.9];

%Death rates for part c
d = [0.1 0.2 0.5 0.01];

M = diag(1-d);
M([2:4],:) = M([2:4],:) + M([1:3],:);
M(2,2) = 0;
M(3,3) = 0;
M(1,:) = b;

P = [100; 200; 150; 75];

%Tolerance
tol = 1e-8;

[eval, evec, itcount] = PowerMethod(M, P, tol);
eval

time = 0;
time_end = 1000;

while(time <= time_end)
    P = M*P;
    time = time + 1;
end

P