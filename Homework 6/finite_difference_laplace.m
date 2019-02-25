%Preston Stringham and River Griffin

function [x,u] = finite_difference_laplace(func, a, b, N, u_a, u_b)
    
    x = linspace(a,b,N);
    h=x(2)-x(1);
    
    A=eye(N-2,N-2).*(-2);
    for i=1:N-3
        A(i,i+1) = 1;
        A(i+1,i) = 1;
    end
    
    B=zeros(N-2,1);
    
    for i=1:N-2
        B(i)=h^2*func(x(i+1));
    end
    
    B(1)=B(1)-u_a;
    B(end)=B(end)-u_b;
    
    u = A\B;
    
    u=[u_a; u; u_b];
    xx=linspace(a,b,1000);
    yexact=xx.*func(xx);
    plot(x,u,'x-', xx,yexact, 'k-')
    
end