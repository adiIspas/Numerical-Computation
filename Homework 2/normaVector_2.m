function [ norma ] = normaVector_2( vector )
%normaVector_2 Determina norma 2 a unui vector dat
%   vector = vectorul caruia vrem sa ii determinam norma

    % Setam variabilele de lucru
    suma = 0;
    
    for idx = 1:size(vector,2)
        suma = suma + vector(idx)^2;
    end
    
    norma = sqrt(suma);
end

