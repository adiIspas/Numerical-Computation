%% Adrian ISPAS, 343
clc;
clear;
close all;

% Setam parametrii initial
numarExercitiu = 3;

switch numarExercitiu
    case 2
        % Exercitiul 2
        % Setam parametrii
        A = [1 -3 3; 3 -5 3; 6 -6 4];

        % A
        norma2 = norma2Matrice(A);
        
        % B
        h2 = h2Matrice(A);
        
    case 3
        % Exercitiul 3
        % Setam parametrii
        A = [10 7 8 7; 7 5 6 5;...
             8 6 10 9; 7 5 9 10];
        b = [32; 23; 33; 31];
%         x = [1; 1; 1; 1];
        
        % A
        x = solutieSistem(A,b);
        
        % B
        bPerturbat = [32.1; 22.9; 33.1; 30.9];
        delta = determinaPerturbatie(b, bPerturbat);
end