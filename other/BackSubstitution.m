function [x] = BackSubstitution(A,b)
% solve the upper triangular system Ax=b using back-substitution

n = length(b);
x = zeros(n,1);

for j=n:-1:1    
    % Check to see if the diagonal entry is zero
    if abs(A(j,j)) < 1e-15
        error('A is singular (diagonal entries of zero)')
    end
    
    % Compute solution component
    x(j) = b(j) / A(j,j);
    
    % Update the RHS vector
    for i=1:j-1
       b(i) = b(i) - A(i,j)*x(j); 
    end
end
