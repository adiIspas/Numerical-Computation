function [ xk, k ] = metodaSecantei( functie, x, epsilon )
%metodaSecantei Implementarea metodei secantei
%   functie   = functia a carei solutii dorim sa o aproximam
%   x         = contine x.penultim (xk-2), x.ultim (xk-1), x.curent (xk) valori initiale din intervalul [inf, sup]
%   epsilon   = eroarea maxima acceptata pentru ca o solutie sa fie buna
%   xk        = aproximarea solutiei
%   k         = numarul de pasi executati pentru determinarea solutiei
    
    % Setam variabilele de lucru
    notFound  = 1;
    numarPasi = 0;

    while notFound
        x.curent = (x.ultim * functie(x.penultim) - x.penultim * functie(x.ultim))...
                /(functie(x.penultim) - functie(x.ultim));
        
        if abs(x.curent - x.ultim) < epsilon
            notFound = 0;
        end

        x.penultim = x.ultim;
        x.ultim = x.curent;
        numarPasi = numarPasi + 1;
    end
    
    xk = x.curent;
    k = numarPasi;
end

