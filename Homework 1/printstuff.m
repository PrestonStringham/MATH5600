%Preston Stringham and River Griffin 
function p = printstuff(func, values)
for i = 1:length(values)
   fprintf(1,'point %.6f has value %.6f\n',values(i),func(values(i)))
end