function [ norma2 ] = norma2Matrice( matrice )
%norma2Matrice Determina norma 2 a unei matrice
%   matrice = matricea a carei norma 2 dorim sa o aflam
%   norma2  = norma2 a matricei
    
    M = matrice' * matrice;
    valoriProprii = eigs(M);
    
    norma2 = max(sqrt(valoriProprii));

end

