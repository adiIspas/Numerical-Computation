function [ h2 ] = h2Matrice( matrice )
%h2Matrice Determina h2 unei matrice
%   matrice = matricea a carei h2 dorim sa o aflam
%   norma2  = h2 a matricei

%     M1 = matrice' * matrice;
%     M2 = (matrice^(-1))' * (matrice^(-1));
    
%     h2 =  max(sqrt(eigs(M1)))/min(sqrt(eigs(M2)));
    h2 = norma2Matrice(matrice)*norma2Matrice(matrice^(-1));
end

