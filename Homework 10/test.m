%Preston Stringham and River Griffin
clc;clear;
f = @(x) exp(x)

x = compSimpson(f, 1, 2, 200)

y = integral(f, 1, 2)

abs(x-y)