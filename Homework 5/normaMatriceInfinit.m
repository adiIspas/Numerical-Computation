function [ norma ] = normaMatriceInfinit( matrice )
%normaMatrice_inf Determina norma infinit a unuei matrice data
%   matrice = matrice careia vrem sa ii determinam norma

    % Setam variabilele de lucru
    maxim = realmin('double');
    
    for idy = 1:size(matrice,1)
        sumaLinie = 0;
        for idx = 1:size(matrice,2)
            sumaLinie = sumaLinie + abs(matrice(idy,idx));
        end
        
        if sumaLinie > maxim
            maxim = sumaLinie;
        end
    end
    
    norma = maxim;
end

