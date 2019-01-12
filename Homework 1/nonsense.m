%Preston Stringham and River Griffin
function y = nonsense(x)
    if(mod(x,2)==1)
        y = 0;
    else
        y = x + 1;
    end 
end
% [4,11,15,20] put into printstuff outputs corresponding values
% [17,122,226,401] with function as given in problem 3. Plugging into
% nonsense, we get [0, 123, 127, 0], as expected.