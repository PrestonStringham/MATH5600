%Preston Stringham and River Griffin
A = [2 4; -3 -6.001]
b = [2; 3]
x = A\b
b1=[2;3.01]
x1 = A\b1
relx=norm(x-x1, inf)/norm(x, inf)
relb=norm(b-b1, inf)/norm(b, inf)
condA=cond(A, inf)
relx <= condA*relb

%Yes, this agrees with the Theorem in problem 2. See paper for details.