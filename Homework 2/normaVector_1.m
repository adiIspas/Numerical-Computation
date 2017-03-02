function [ norma ] = normaVector_1( vector )
%normaVector_1 Determina norma 1 a unui vector dat
%   vector = vectorul caruia vrem sa ii determinam norma
    
    % Setam variabilele de lucru
    suma = 0;
    
    for idx = 1:size(vector,2)
        suma = suma + abs(vector(idx));
    end
    
    norma = suma;
end

