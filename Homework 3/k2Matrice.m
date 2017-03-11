function [ k2 ] = k2Matrice( matrice )
%k2Matrice
    
    valoriProprii = eigs(matrice' * matrice);
    
    k2 = sqrt(max(valoriProprii)/min(valoriProprii));
end

