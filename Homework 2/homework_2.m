%% Adrian ISPAS, 343
clc;
clear;
close all;

% Setam parametrii initial
numarExercitiu = 4;

switch numarExercitiu
    case 1
        %% Exercitiul 1
        % Setam parametrii
        functie_1 = @(x)cos(exp(1).^x - 2) - exp(1).^x + 2;
        x_0 = 0.5;
        x_1 = 1.5;
        x = struct('penultim',double(x_0),'ultim',double(x_1),'curent',double(0));
        epsilon = 10^(-5);

        [xk_1, k] = metodaSecantei(functie_1, x, epsilon);
    case 2
        %% Exercitiul 2
        % Setam parametrii
        epsilon = 10 ^ (-5);
        a = 0.5;
        b = 1.5;

        functie_2 = @(x)cos(exp(1).^x - 2) - exp(1).^x + 2;
        [xk_2, k] = metodaFalseiPozitii(functie_2, a, b, epsilon);
    case 4
        % Exercitul 4
        % Setam parametrii
        vector = [1 2 3 4 5];
        matrice = [1 2 3; 4 5 6; 7 8 9];
        
        norma_1 = normaVector_1(vector);
        norma_2 = normaVector_2(vector);
        norma_inf = normaVector_inf(vector);
        norma_matrice_inf = normaMatrice_inf(matrice);
end

%% End of program
disp('Done homework 2.');