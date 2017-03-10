function [ h2 ] = h2Matrice( matrice )
%h2Matrice Determina h2 unei matrice
%   matrice = matricea a carei h2 dorim sa o aflam
%   norma2  = h2 a matricei

    M1 = matrice' * matrice;
    
    h2 =  norma2Matrice(M1)/min(eigs(M1));
end

