function [L,U,P] = MakePLU(A)
% compute PLU decomposition for given matrix A: L*U=P*A

n = size(A,1);
L=eye(n);
P=eye(n);
for k=1:n-1
    % Find largest pivot in column (in or beneath row k)
    [pivotValue, pivotRow] = max(abs(A(k:n,k)));
    % adjust to row number in A (there are k-1 entries above the diagonal)
    pivotRow = pivotRow+k-1;
    
    % Interchange rows of A, P, and colum 1..i-1 of L:
    if (pivotRow ~= k)
        A([k pivotRow], :) = A([pivotRow k], :);
        P([k pivotRow], :) = P([pivotRow k], :);
        L([k pivotRow], 1:k-1) = L([pivotRow k], 1:k-1);
    end        

    %Check to see if the pivot is zero
    if abs(A(k,k)) < 1e-15
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
