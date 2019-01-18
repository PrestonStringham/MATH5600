%Preston Stringham and River Griffin
function tobinary(n)
    if (mod(n,1) ~= 0)
        error('Number is not a whole number.');
    else
        pmax = floor(log2(n));
        p = [pmax]
        i=2
        while pmax > 0
           pmax = pmax-1;
           p(i) = pmax
           i = i + 1;
        end
        output = zeros(1,length(p))
    end
end