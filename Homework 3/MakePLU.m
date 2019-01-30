function [L,U,P]=MakePLU(A)
    n = size(A,1);
    L=eye(n);
    P=eye(n);
    
    for k=1:n-1
        for i=k+1:n
            %col = A(:,k); %Get the kth column of A
            [M, I] = max(A(:,k)); %Get the largest element in the column
            [I_row, I_col] = ind2sub(size(A),I)
            A([I_col I_row],:) = A([I_row I_col],:); %Replace kth row in U with row that has greatest value
            P([I_col I_row],:) = P([I_row I_col],:); %Replace kth row in P with row that has greatest value in U
            %Finish LU Decomp
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