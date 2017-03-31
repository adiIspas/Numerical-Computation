% Adrian ISPAS, 343

clc
numarExercitiu = 3;

switch numarExercitiu
    case 1
        A = [0.2 0.01 0; 
             0 1 0.04;
             0 0.02 1];
        a = [3.6; 2; 2.4;];
        epsilon = 10^(-5);

        [x, numarIteratii] = metodaJacobi(A, a, epsilon);
    case 2
        A = [4 1 2;
             0 3 1;
             2 4 8];
        a = [3.6; 2; 2.4;];
        epsilon = 10^(-5);
        
        [x, numarIteratii] = metodaJacobiDiagonalaDominantaLinii(A, a, epsilon);
    case 3
        A = [4 2 2; 2 10 4; 2 4 6];
        a = [3; 1; 2];
        epsilon = 10^(-2);
        sigma = 0.1;
        
        [x, numarIteratii] = metodaJacobiRelaxata(A, a, epsilon, sigma);
    case 4
        A = [4 2 2; 2 10 4; 2 4 6];
        a = [3; 1; 2];
        epsilon = 10^(-1);
        p = 10;
        
        [x, numarIteratii] = metodaJacobiRelaxataOptima(A, a, epsilon, p);
    case 6
        A = [1 1/2 1/3; 1/5 1 1/6; 1/10 1/20 1];
        a = [1; 2; 3];
        epsilon = 10^(-5);
        sigma = 0.5;
        
        [x, numarIteratii] = metodaGaussSeidelRelaxata(A, a, epsilon, sigma);
    case 7
        A = [4 2 2; 2 10 4; 2 4 6];
        a = [3; 1; 2];
        epsilon = 10^(-2);
        p = 10;
        
        [x, numarIteratii] = metodaGaussSeidelRelaxataOptima(A, a, epsilon, p);
end