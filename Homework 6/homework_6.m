% Adrian ISPAS, Grupa 343
clear
clc

numarExercitiu = 1;

switch numarExercitiu
    case 1
        A = [4 1; 1 3];
        b = [1; 2];

        x = gradientConjugat(A,b);
    case 2
        A = [1 0 0; 0 -1 1; 0 1 -1];
        epsilon = 10^(-5);

        lambda = metodaRotatiilor(A,epsilon);
    case 3
        A = [1 0 0; 0 -1 1; 0 1 -1];
        epsilon = 10^(-5);

        lambda = metodaRotatiilor(A,epsilon);
        diff = sort(eigs(A)') - sort(lambda);
    case 4
        epsilon = 10^(-10);
 
        A = zeros(3,3);
        b = zeros(3,1);
        
        for i = 1:3
            A(i,i) = 2;
            b(i,1) = i;
        end
        
        for i = 1:2
            A(i,i+1) = 1;
            A(i+1,i) = 1;
        end

        [x, n] = gradientConjugatEroare(A,b,epsilon);
end