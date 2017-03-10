function [ solutie ] = solutieSistem( A, b )
%solutieSistem Determina solutia unui sistem
%   A = matrice asociata sistemului
%   b = matricea termenilor liberi

    solutie = inv(A) * b;
    % Pentru o computare mai rapida se foloseste 
    % solutie = A\b;
end

