%% Adrian ISPAS, 343
clc;
clear;
close all;

% Setam parametrii initial
numarExercitiu = 1;

switch numarExercitiu
    case 1
        A = [1 2 4; 3 8 14; 2 6 13];
        b = [1; 1; 1];
        [x,L,U] = factorizareLU(A,b);
    case 2
        A = [4 2 2; 2 10 4; 2 4 6];
        b = [1; 1; 1];
        [x,L] = factorizareCholesky(A,b);
    case 3
        A = [0 4 5; -1 -2 -3; 0 0 1];
        b = [1; 1; 1];
        [x,Q,R] = factorizareQR(A,b);
end

disp('Done');