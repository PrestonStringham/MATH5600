%Preston Stringham and River Griffin
[root, its] = newton(@myNDfun, @myNDfunprime, [1;2;3], 1e-7)
myNDfun(root)
