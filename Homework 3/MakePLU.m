%Preston Stringham and River Griffin
function [L,U,P]=MakePLU(A)
    n = size(A,1);
    L=eye(n);
    P=eye(n);
    
    for k=1:n-1
        for i=k+1:n
            col = A(k:end,k); %Get elements below A(k,k), inclusive.
            [~, I] = max(abs(col)); %Get the largest element in the column
            
            dummyU = A(k,:);
            dummyP = P(k,:);
            
            A(k,:) = A(k+(I-1),:);
            P(k,:) = P(k+(I-1),:);
            
            A(k+(I-1),:) = dummyU;
            P(k+(I-1),:) = dummyP;
            
            %Swap elements in L if necessary
            if ~isdiag(L)
                if L([k+(I-1) k] >= L([k k+I]))
                else
                    L([k:I+1 k]) = L([k k:I+1]);
                end
            end
            
            %Finish LU Decomp
            m = A(i,k)/A(k,k); %multiplier for current row i
            
            L(i,k) = m;
           
            A(i,k:n) = A(i,k:n) - m*A(k,k:n);
        end
    end
    
    U = A;
   %A = [0 1 4; 2 4 6; 5 6 0];
   %B = [0 1 2 3; -3 0 0 1; 0 1 1/5 3; 2 5 1 7];
end