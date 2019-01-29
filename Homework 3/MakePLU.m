function [L,U,P]=MakePLU(A)
    n = size(A,1);
    L=eye(n);

    for k=1:n-1
        % Check to see if the pivot is zero
        if abs(A(k,k)) < 1e-15
            
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
   %A = [0 1 4; 2 4 6; 5 6 0];
   %B = [0 1 2 3; -3 0 0 1; 0 1 1/5 3; 2 5 1 7];
end