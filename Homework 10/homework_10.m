% Adrian ISPAS, Grupa 343
clear, clc

numarExercitiu = '1f';

switch numarExercitiu
    case '1a'
        functie = @(t,x)x - t ^ 2 + 1;
        a = 0;
        b = 2;
        alfa = 0.5;
        N = 10;
        
        [t,x] = metodaEuler(functie, a, b, alfa, N);
    case '1b'
        functie = @(t,x)x - t^2 + 1;
        a = 0;
        b = 2;
        alfa = 0.5;
        N = 10;
        
        derivate = cell(3,1);
        derivate{1} = @(t,x)-2 * t + x - t^2 + 1;
        derivate{2} = @(t,x)-2 * t + x - t^2 - 1;
        derivate{3} = @(t,x)-2 * t + x - t^2 - 1;
        
        [t,x] = metodaTaylor(functie, derivate, a, b, alfa, N);
    case '1c'
        functie = @(t,x)x - t^2 + 1;
        a = 0;
        b = 2;
        alfa = 0.5;
        N = 10;
        
        derivate = cell(1,1);
        derivate{1} = @(t,x)-2 * t + x - t^2 + 1;

        [t,x] = metodaTaylor(functie, derivate, a, b, alfa, N);
    case '1d'
        functie = @(t,x)x - t ^ 2 + 1;
        a = 0;
        b = 2;
        alfa = 0.5;
        N = 10;
        
        [t,x] = metodaEulerModificata(functie, a, b, alfa, N);
    case '1e'
        functie = @(t,x)x - t ^ 2 + 1;
        a = 0;
        b = 2;
        alfa = 0.5;
        N = 10;
        
        [t,x] = metodaHeun(functie, a, b, alfa, N);
    case '1f'
        functie = @(t,x)x - t ^ 2 + 1;
        a = 0;
        b = 2;
        alfa = 0.5;
        N = 10;
        
        [t,x] = metodaRungeKutta(functie, a, b, alfa, N);
end