function [ x ] = gradientConjugat( A, b )
%gradientConjucat
    
    x = zeros(size(A,1),1);
    r = b - A * x;
    p = r;
    rsold = r' * r;

    for i = 1:length(b)
        Ap = A * p;
        alpha = rsold / (p' * Ap);
        x = x + alpha * p;
        r = r - alpha * Ap;
        rsnew = r' * r;
        p = r + (rsnew / rsold) * p;
        rsold = rsnew;
    end
end

