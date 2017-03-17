function [ L ] = determinaL( A )
%determinaL 
    
    L = zeros(size(A));
    alpha = A(1,1);
    
    if alpha <= 0
        disp('Matricea nu este pozitiv definita');
    end
    
    L(1,1) = sqrt(A(1,1));
    L(2:size(A,1),1) = (1/L(1,1)) .* A(2:size(A,1),1); 
    
    for k = 2:size(A,1)
        alpha = A(k,k) - sum(L(k,1:k-1).^2);
        
        if alpha <= 0
            disp('Matricea nu este pozitiv definita');
            break;
        end
        
        L(k,k) = sqrt(A(k,k) - sum(L(k,1:k-1).^2));
        L(k+1:size(A,1),k) = (1/L(k,k)) .* (A(k+1:size(A,1),k) - ...
            sum(L(k+1:size(A,1),1:k-1) .* L(k,1:k-1)));
    end
end

