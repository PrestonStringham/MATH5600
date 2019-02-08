% Preston Stringham and River Griffin
x=[]
y=[]
for i = 0:15
   x(i+1)=i
   y(i+1)=nonsense(i)
end

figure
plot(x,y,'--^')
title('x vs. nonsense')
xlabel('x') 
ylabel('nonsense') 
h = legend('point')
set(h)