function [ k_inf ] = kInfinit( matrice )
%kInfinit

    k_inf = normaMatrice_inf(matrice) * normaMatrice_inf(matrice^(-1));
end

