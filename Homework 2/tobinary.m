%Preston Stringham and River Griffin
function [vector] = tobinary(n)
    if (mod(n,1) ~= 0)
        error('Number is not a whole number.');
    else
        dummy = zeros;
        i = 1;
        while n > 0
            pmax = floor(log2(n)); %get index of log2
            dummy(i) = pmax %store the index
            n = n - (2.^pmax); %update number by subtracting 2^pmax value
            i = i + 1; %increment index for dummy vector
        end
        maxi = max(dummy) + 1;
        vector = zeros(1, maxi);
        for j = 1:length(dummy)
            vector(dummy(j)+1) = 1;
        end
        vector = fliplr(vector);
    end
end