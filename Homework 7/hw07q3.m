%Preston Stringham and River Griffin
%i = 0
%while(root ~= [0;0;0])
 %   try
  %      [root, its] = newton(@myNDfun, @myNDfunprime, [0;i;0], 1e-8)
   %     i = i + 0.1;
    %    myNDfun(root)
    %catch
     %   i = i + 0.1;
      %  continue
   % end
%end
[root, its] = newton(@myNDfun, @myNDfunprime, [0;1;0], 1e-8)
myNDfun(root)