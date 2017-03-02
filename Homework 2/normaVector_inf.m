function [ norma ] = normaVector_inf( vector )
%normaVector_inf Determina norma infinit a unui vector dat
%   vector = vectorul caruia vrem sa ii determinam norma

    % Setam variabilele de lucru
    maxim = realmin('double');
    
    for idx = 1:size(vector,2)
        if abs(vector(idx)) > maxim
            maxim = abs(vector(idx));
        end
    end
    
    norma = maxim;
end

