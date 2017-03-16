function [ x ] = substitutieAscendenta(A, b)
%subsirAscendent 
    x = zeros(1,size(A,1));
    x(1) = b(1)/A(1,1);
    
    for k = 2:size(A,1)
        suma = sum(A(k,1:k-1).*x(1:k-1));
        x(k) = (1/A(k,k))*(b(k) - suma);
    end
end

