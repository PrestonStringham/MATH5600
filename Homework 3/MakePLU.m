%Preston Stringham and River Griffin
function [L,U,P]=MakePLU(A)
    n = size(A,1);
    L=eye(n);P=L; %Set P = L = I_nxn
    
    for k=1:n-1
        for i=k+1:n 
            col = A(k:end,k); %Get elements below A(k,k), inclusive.
            [~, I] = max(abs(col)); %Get the largest element in the column
            
            I=I+k-1; %If max is 1 no switching in L will occur

            dummyL = L(k,1:k-1); %dummy variable to store k to k-1 elements in L
            
            %perform switching
            A([k I],:) = A([I k],:);
            P([k I],:) = P([I k],:);
            L(k, 1:k-1) = L(I, 1:k-1);
            
            L(I, 1:k-1) = dummyL; %reinsert the dummy variable to new place
            
            %Finish LU Decomp 
            L(i,k) = A(i,k)/A(k,k);
            
            %perform guassian row reduction
            A(i,k:n) = A(i,k:n) - A(i,k)/A(k,k)*A(k,k:n);
        end
    end
    
    U = A;
   %A = [0 1 4; 2 4 6; 5 6 0];
   %B = [0 1 2 3; -3 0 0 1; 0 1 1/5 3; 2 5 1 7];
   %C = [2 1 3; 4 -1 2; -1 4 1];
end