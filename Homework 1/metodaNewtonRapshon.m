function [ xk, k ] = metodaNewtonRapshon( functie, functieDerivata, functieDerivata2, inf, sup, xo, epsilon )
%metodaNewtonRapshon Implementarea metodei Newton - Rapshon
%   functie          = functia derivabila a carei solutii dorim sa o aproximam
%   functiaDerivata  = derivata de ordin I a functiei
%   functieDerivata2 = derivata de ordin II a functiei
%   inf              = inceputul intervalului pe care este definita functia
%   sup              = sfarsitul intevalului pe care este definita functia
%   x0               = valoare initiala
%   epsilon          = eroarea maxima acceptata pentru ca o solutie sa fie buna
%   xk               = aproximarea solutiei
%   k                = numarul de pasi necesari pentru gasirea aproximarii solutiei

    if xo == 'cauta'
        xo = determinaXO(functie, functieDerivata2, inf, sup);
    end

    % Setam parametrii
    notFound = 1;
    numarPasi = 0;
    x = struct('curent',double(xo),'precedent',double(xo));
    
    while notFound
        x.curent = x.precedent - (functie(x.precedent) / functieDerivata(x.precedent));
        
        if abs(x.curent - x.precedent) < epsilon
            notFound = 0;
        end
        
        x.precedent = x.curent;
        numarPasi = numarPasi + 1;
    end
    
    xk = x.curent;
    k = numarPasi;
end

function [ xo ] = determinaXO(functie, functieDerivata2, inf, sup)
    xo = 'notFound';
    for idx = inf:0.01:sup
        if functie(idx) * functieDerivata2(idx) > 0
            xo = idx;
            break;
        end
    end
end
