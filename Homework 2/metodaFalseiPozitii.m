function [ xk, k ] = metodaFalseiPozitii( functie, inf, sup, epsilon )
%metodaFalseiPozitii Implementarea metodei falsei pozitii
%   functie   = functia a carei solutii dorim sa o aproximam
%   inf       = inceputul intervalului pe care este definita functia
%   sup       = sfarsitul intevalului pe care este definita functia
%   epsilon   = eroarea maxima acceptata pentru ca o solutie sa fie buna
%   xk        = aproximarea solutiei
%   k         = numarul de pasi executati pentru determinarea solutiei

    % Setam variabilele de lucru
    a = struct('curent',double(inf),'precedent',double(inf));
    b = struct('curent',double(sup),'precedent',double(sup));
    x = struct('curent',double(0),'precedent',double(0));
    x.precedent = (sup * functie(inf) - inf * functie(sup))/(functie(inf) - functie(sup));
    
    notFound = 1;
    numarPasi = 0;
    
    while notFound
        if functie(x.precedent) == 0
            a.curent = a.precedent;
            b.curent = b.precedent;
            x.curent = x.precedent;
        elseif functie(a.precedent) * functie(x.precedent) < 0
            a.curent = a.precedent;
            b.curent = x.precedent;
            x.curent = (b.curent * functie(a.curent) - a.curent * functie(b.curent))...
                        /(functie(a.curent) - functie(b.curent));
        elseif functie(a.precedent) * functie(x.precedent) > 0
            a.curent = x.precedent;
            b.curent = b.precedent;
            x.curent = (b.curent * functie(a.curent) - a.curent * functie(b.curent))...
                        /(functie(a.curent) - functie(b.curent));
        end
        
        if abs(x.curent - x.precedent) < epsilon
            notFound = 0;
        end
        
        a.precedent = a.curent;
        b.precedent = b.curent;
        x.precedent = x.curent;
        numarPasi = numarPasi + 1;
    end
    
    xk = x.curent;
    k = numarPasi;
end

