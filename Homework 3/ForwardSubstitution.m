function x=ForwardSubstitution(A,b)
    n = length(b);
    x = zeros(n,1);

    for j=1:n   
        % Check to see if the diagonal entry is zero
        if abs(A(j,j)) < 1e-15
            error('A is singular (diagonal entries of zero)')
        end

        % Compute solution component
        x(j) = b(j) / A(j,j);

        % Update the RHS vector
        for i=j+1:n
           b(i) = b(i) - A(i,j)*x(j); 
        end
    end
end