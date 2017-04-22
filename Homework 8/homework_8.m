% Adrian ISPAS, Grupa 343

clear
clc

numarExercitiu = 1;

switch numarExercitiu
    case 1
        a = -1;
        b = 1;
        n = 4;
        x = 1;
        functie = @(x)exp(2*x);
        
        y = splineLine(functie, a, b, n, x);
    case 2
        a = -1;
        b = 1;
        n = 4;
        x = 1;
        functie = @(x)exp(2*x);
        functieDerivata = @(x)2*exp(2*x);
        
        y = splinePatratic(functie, functieDerivata, a, b, n, x);
    case 3
        a = -1;
        b = 1;
        n = 4;
        x = 1;
        functie = @(x)exp(2*x);
        
        y = splineCubic(functie, a, b, n, x);
end