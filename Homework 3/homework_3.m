%% Adrian ISPAS, 343
clc;
clear;
close all;

% Setam parametrii initial
numarExercitiu = 2;

switch numarExercitiu
    case 2
        %% Exercitiul 2
        % Setam parametrii
        A = [1 -3 3; 3 -5 3; 6 -6 4];

        % A
        norma2 = norma2Matrice(A);
        
        % B
        h2 = h2Matrice(A);
        
    case 3
        %% Exercitiul 3
        % Setam parametrii
        A = [10 7 8 7; 7 5 6 5;...
             8 6 10 9; 7 5 9 10];
        b = [32; 23; 33; 31];
        % x = [1; 1; 1; 1];
        
        % A
        x1 = solutieSistem(A,b);
        
        % B
        bPerturbat = [32.1; 22.9; 33.1; 30.9];
        delta = determinaPerturbatie(b, bPerturbat);
        APerturbat = (x1 + delta .* x1) .* A;
        
        xPerturbat = solutieSistem(APerturbat, bPerturbat);
        
        % C
        APerturbat = [10 7 8.1 7.2; 7.08 5.04 6 5;...
                      8 5.98 9.89 9; 6.99 4.99 9 9.98];
        delta2 = determinaPerturbatie(A, APerturbat);
        
        ANou =  APerturbat;
        x2 = solutieSistem(ANou, b);
        
        % D
        k_inf = kInfinit(A);
        c1 = normaMatrice_inf(delta .* b)/normaMatrice_inf(b);
        c2 = normaMatrice_inf(delta .* x1)/normaMatrice_inf(x1);
        c3 = k_inf * c1;
        
        % E
        k2 = k2Matrice(A);
    case 5
        A = [0 1 -2; 1 -1 1; 1 0 -1];
        b = [4; 6; 2];
        
        solutie = SubstitutieDescendenta(A, b);
    case 6
        A = [0 1 -2; 1 -1 1; 1 0 -1];
        b = [4; 6; 2];
        
        solutie = GaussFaraPivot(A, b);
    case 7
        A = [0 1 -2; 1 -1 1; 1 0 -1];
        b = [4; 6; 2];
        
        solutie = GaussCuPivot(A, b);
end
        
disp('Done')