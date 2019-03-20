%Preston Stringham and River Griffin

vec1 = [-7;7;-9];
vec2 = [1;2;3];

[root, its] = newton(@myNDfun, @myNDfunprime, vec1, 1e-8)
myNDfun(root)

[root, its] = newton(@myNDfun, @myNDfunprime, vec2, 1e-8)
myNDfun(root)