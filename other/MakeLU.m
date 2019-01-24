function [L,U] = MakeLU(A)
% compute LU decomposition for given matrix A

n = size(A,1);
L=eye(n);

for k=1:n-1
    % Check to see if the pivot is zero
    if abs(A(k,k)) < 1e-15;
        error('A has diagonal entries of zero')
    end

    for i=k+1:n
        m = A(i,k)/A(k,k); %multiplier for current row i
        L(i,k) = m;
        for j=k:n
            A(i,j) = A(i,j) - m*A(k,j);
        end
    end
end

U = A;

