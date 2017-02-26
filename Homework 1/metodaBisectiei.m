function [ c_final, k ] = metodaBisectiei( functie, inf, sup, numarPasi, epsilon)
%metodaBisectiei Implementarea metodei bisectiei
%   functie   = functia a carei solutii dorim sa o aproximam
%   inf       = inceputul intervalului pe care este definita functia
%   sup       = sfarsitul intevalului pe care este definita functia
%   numarPasi = numarul de pasi pe care sa ii execute algoritmul
%   epsilon   = eroarea maxima acceptata pentru ca o solutie sa fie buna
%   c_final   = aproximarea solutiei
    
    if numarPasi ~= 0 
        % Rulam pentru un anumit numar de pasi
        numarPasCurent = 0;
        a_precedent = double(inf);
        b_precedent = double(sup);
        c_precedent = double((inf + sup)/2);
        
        while numarPasCurent <= numarPasi
            if numarPasCurent == 0
                a_precedent = inf;
                b_precedent = sup;
                c_precedent = (a_precedent + b_precedent)/2;
            end

            if numarPasCurent > 0
                if functie(a_precedent) * functie(c_precedent) < 0
                    b_precedent = c_precedent;
                    c_precedent = (a_precedent + b_precedent)/2;
                elseif functie(a_precedent) * functie(c_precedent) > 0
                    a_precedent = c_precedent;
                    c_precedent = (a_precedent + b_precedent)/2;
                end
            end

            numarPasCurent = numarPasCurent + 1;
        end
        c_final = c_precedent;
    else
        % Rulam pana la gasirea solutiei
        a = struct('curent',double(inf),'precedent',double(inf));
        b = struct('curent',double(sup),'precedent',double(sup));
        c = struct('curent',double((a.curent + b.curent)/2),'precedent',double((a.curent + b.curent)/2));
        numarPasCurent = 0;
        notFound = 1;
        
        while notFound
                if functie(a.precedent) * functie(c.precedent) == 0
                    a.curent = a.precedent;
                    b.curent = b.precedent;
                    c.curent = c.precedent;
                elseif functie(a.precedent) * functie(c.precedent) < 0
                    a.curent = a.precedent;
                    b.curent = c.precedent;
                    c.curent = (a.curent + b.curent)/2;
                elseif functie(a.precedent) * functie(c.precedent) > 0
                    a.curent = c.precedent;
                    b.curent = b.precedent;
                    c.curent = (a.curent + b.curent)/2;
                end

            % Testam conditia pentru a verifica daca solutia este buna
            if abs(c.curent - c.precedent) < epsilon || abs(functie(c.curent)) < epsilon
                notFound = 0;
            end
            
            a.precedent = a.curent;
            b.precedent = b.curent;
            c.precedent = c.curent;
            numarPasCurent = numarPasCurent + 1;
        end
        
        c_final = c.curent;
        k = numarPasCurent;
    end
end