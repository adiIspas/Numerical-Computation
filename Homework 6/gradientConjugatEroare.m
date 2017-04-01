function [ x, n ] = gradientConjugatEroare( A, b, epsilon )
%gradientConjucat
    
    x = zeros(size(A,1),1);
    r = b - A * x;
    p = r;
    rsold = r' * r;

    done = false;
    n = 1;
    while done == false
        Ap = A * p;
        alpha = rsold / (p' * Ap);
        x_temp = x;
        x = x + alpha * p;
        r = r - alpha * Ap;
        rsnew = r' * r;
        
        if sqrt(rsnew) < epsilon
           done = true; 
        end

        p = r + (rsnew / rsold) * p;
        rsold = rsnew;
        n = n + 1;
    end
end

