%% Adrian ISPAS, 343
clc;
clear;
close all;

% Setam parametrii initial
numarExercitiu = 7;

switch numarExercitiu
    case 2
        %% Exercitiul 2
        % Setam parametrii
        functie_2 = @(x)x.^3-7.*x.^2+14.*x-6;
        a = 3.2;
        b = 4;
        numarPasi = 100;

        % A
        x = 0:0.001:4;
        y = functie_2(x);
        hold on;
        plot(x,y);

        % B
        [c_2b] = metodaBisectiei(functie_2, a, b, numarPasi, 0);

        % C
        plot(c_2b, functie_2(c_2b),'*');
        hold off;
    case 3
        %% Exercitiul 3
        % Setam parametrii
        epsilon = 10 ^ (-5);
        a = 0.5;
        b = 1.5;
        % A
        functia_y1 = @(x)exp(1).^x - 2;
        functia_y2 = @(x)cos(exp(1).^x - 2);

        x = 0:0.001:4;
        hold on;
        plot(x,functia_y1(x));
        plot(x,functia_y2(x));
        hold off;

        % B
        functie_3 = @(x)cos(exp(1).^x - 2) - exp(1).^x + 2;
        [c_3b, k] = metodaBisectiei(functie_3, a, b, 0, epsilon);
    case 4
        % Exercitul 4
        % Setam parametrii
        a = 0;
        b = 2;
        functie_4 = @(x)x - sqrt(3);
        epsilon = 10^(-5);
        [c_4] = metodaBisectiei(functie_4, a, b, 0, epsilon);
    case 7
        % Exercitiul 7
        % Setam parametrii
        a = 0.5;
        b = 1.5;
        functie = @(x)cos(exp(1).^x - 2) - exp(1).^x + 2;
        functieDerivata = @(x)-exp(1).^x-exp(1).^x*sin(exp(1).^x-2);
        functieDerivata2 = @(x)-exp(1).^x-exp(1).^x*sin(exp(1).^x-2) - (exp(1).^2.*x)*cos(exp(1).^x-2);
        epsilon = 10^(-5);
        
        [xk, kx] = metodaNewtonRapshon( functie, functieDerivata, functieDerivata2, a, b, 'cauta', epsilon );
        [ck, kc] = metodaBisectiei(functie, a, b, 0, epsilon);
end

%% End of program
disp('Done homework 1.');