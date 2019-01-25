%Preston Stringham and River Griffin
A = [1 2 3 4 5; 0 6 7 8 9; 0 0 10 11 12; 0 0 0 13 14; 0 0 0 0 15]
b = [2.4; 12; -12; -14; -15]
x = BackSubstitution(A,b)
r = A*x - b
norm(r)