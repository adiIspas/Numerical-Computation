function [ x, numarIteratii ] = metodaGaussSeidelRelaxataOptima( A, a, epsilon, p )
%metodaGaussSeidelRelaxataOptima 

    sigma = (2 * 1:p-1)/(normaMatriceInfinit(A) .* p);
    valoriNumarIteratii = zeros(1,size(sigma,2));
    
    for i = 1:size(sigma,2)
        [~, numarIteratii] = metodaGaussSeidelRelaxata(A, a, epsilon, sigma(i));
        valoriNumarIteratii(i) = numarIteratii;
    end

    [~, pozitie] = min(valoriNumarIteratii);
    
    sigmaOptim = (2 * pozitie)/(normaMatriceInfinit(A) * p);
    
    [x, numarIteratii] = metodaGaussSeidelRelaxata(A,a, epsilon, sigmaOptim);
end

