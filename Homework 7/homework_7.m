% Adrian ISPAS, Grupa 343
clear
clc

numarExercitiu = 3;

switch numarExercitiu
    case 2
        functie = @(x)exp(2*x);
        a = -1;
        b = 1;
        n = 6;
        nFinal = 10*(n+1);
        
        polinom = metodaNewtonDifDivizate(functie, a, b, n);
        x = 1:0.1:n;
        
        eroare = abs(polinom(x) - functie(x));

        plot(x,functie(x),'-.r*')
        hold on
        plot(x,polinom(x),'-.g*')
        plot(x,eroare,'-.b*')
        hold off
    case 3
        functie = @(x)exp(2*x);
        a = -1;
        b = 1;
        n = 6;
        solutie = 0.5;
        x = 1:0.1:n;
        
        polinom = metodaNewtonDifDivizate(functie, a, b, n);
        
        eroare = abs(polinom(x) - functie(x));
        plot(x,eroare)
    case 4
        functie = @(x)exp(2*x);
        a = -1;
        b = 1;
        n = 2;
        
        polinomLagrange = metodaLagrange(functie, a, b, n);
        polinomNaiva = metodaNaiva(functie, a, b, n, ones(1,n+1));
end