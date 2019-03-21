b = [0.3 0.3 0.3 0.1];

%Survival rates for part a
d = [0.1 0.2 0.5 0.9];

%Survival rates for part c
%d = [0.1 0.2 0.5 0.01];

%Create matrix
M = diag(1-d);
M(2:4,:) = M(2:4,:) + M(1:3,:);
M(2,2) = 0;
M(3,3) = 0;
M(1,:) = b;

%Find largest eigenvalue by observing D from eig function
%IF largest eigenvalue > 1 then population explodes
%If largest eigenvalue < 1 the population goes extinct
[V, D] = eig(M);
D

%Initial population vector
P = [100; 200; 150; 75];

%Beginning and ending time
time = 0;
time_end = 1000;

%Run simulation
while(time <= time_end)
    P = M*P;
    time = time + 1;
end

%Observe the population vector after simulation has completed
P