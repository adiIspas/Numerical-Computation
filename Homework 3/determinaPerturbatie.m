function [ perturbatie ] = determinaPerturbatie( b, bPerturbat )
%determinaPerturbatie Determina perturbatia unei matrice cunoscanduse matricea initiala
%   b = matricea initiala
%   bPerturbat = matricea perturbata
%   perturbatie = perturbatia aplicata matricei initiale

    x = bPerturbat - b;
    perturbatie = x;
end

