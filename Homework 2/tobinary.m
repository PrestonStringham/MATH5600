%Preston Stringham and River Griffin
function [vector] = tobinary(n)
    if (mod(n,1) ~= 0)
        error('Number is not a whole number.');
    else
        vector = zeros(1,1);
        if n == 0
            return;
        end
        while n > 0
            pmax = floor(log2(n)); %get index of log2
            if isempty(vector) %if vector is empty fill it with its max
                vector = zeros(1, pmax+1);
                vector(pmax+1)=1;
            else
                vector(pmax+1)=1;
            end
            n = n - (2.^pmax); %update number by subtracting 2^pmax value
        end
        vector = fliplr(vector);
    end
end