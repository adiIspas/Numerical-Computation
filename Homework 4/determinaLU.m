function [ L, U ] = determinaLU( A )
%determinaLU 

    L = zeros(size(A));
    U = zeros(size(A));
    
    if det(A) ~= 0
        for idx = 1:size(A,1)
            U(1,idx) = A(1,idx);
            L(idx,1) = A(idx,1)/U(1,1);
        end
        
        for k = 1:size(A,1)
            for idx = k:size(A,1)
                suma_u = 0;
                suma_l = 0;
                
                for idy = 1:k-1
                    suma_u = L(k,idy) * U(idy,idx);
                    suma_l = L(idx,idy) * U(idy,k);
                end
                
                U(k,idx) = A(k,idx) - suma_u;
                L(idx,k) = (1/U(k,k)) * (A(idx,k) - suma_l);
            end
        end
    end
end

