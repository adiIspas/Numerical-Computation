function [ lambda ] = metodaRotatiilor( A, epsilon )
%metodaRotatiilor 

    x = A;
    
    while (sum(x(:).^2) - sum(diag(x).^2)) >= epsilon
        max = realmin;
        for i = 1:size(x,1)
            for j = 1:i-1
                if x(i,j) > max
                    max = x(i,j);
                    p = i;
                    q = j;
                end
            end
        end
    
        if x(p,p) == x(q,q)
            theta = pi/4;
        else
            theta = (1/2) * atan((2*x(p,q))/(x(p,p)-x(q,q)));
        end
        
        c = cos(theta);
        s = sin(theta);
        
        T = eye(size(A,1));
        T(p,p) = c;
        T(p,q) = -s;
        T(q,p) = s;
        T(q,q) = c;
        
        y = T'*A*T;
        
        for i = 1:size(x,1)
            for j = 1:size(x,1)
                if i ~= p && i ~= q && j ~= p && j ~=q
                    y(i,j) = x(i,j);
                end
                
                if j ~=p && j ~= q
                    y(p,j) = c*x(p,j) + s*x(q,j);
                    y(j,p) = c*x(p,j) + s*x(q,j);
                    y(q,j) = -s*x(p,j) + c*x(q,j);
                    y(j,q) = -s*x(p,j) + c*x(q,j);
                end
            end
        end
        
        y(p,q) = 0;
        y(q,p) = 0;
        y(p,p) = (c^2)*x(p,p) + 2*c*s*x(p,q)+(s^2)*x(q,q);
        y(q,q) = (s^2)*x(p,p)-2*c*s*x(p,q)+(c^2)*x(q,q);
        
        x = y;
    end
    
    lambda = x;
end

