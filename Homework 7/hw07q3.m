%Preston Stringham and River Griffin
[root, its] = newton(@myNDfun, @myNDfunprime, [1;2;40], 1e-8)
myNDfun(root)