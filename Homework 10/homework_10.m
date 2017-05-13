% Adrian ISPAS, Grupa 343
clear, clc

numarExercitiu = '1a';

switch numarExercitiu
    case '1a'
        data
        
        [t,x] = metodaEuler(functie, a, b, alfa, N);
        ploteazaGrafic(functieSolutie, t, x, 'Euler', 1);
        scrieRezultate(t, x, 'Euler');
        
    case '1b'
        data
        
        derivate = cell(3,1);
        derivate{1} = @(t,x)-2 * t + x - t^2 + 1;
        derivate{2} = @(t,x)-2 * t + x - t^2 - 1;
        derivate{3} = @(t,x)-2 * t + x - t^2 - 1;
        
        [t,x] = metodaTaylor(functie, derivate, a, b, alfa, N);
        ploteazaGrafic(functieSolutie, t, x, 'Taylor IV', 1);
        scrieRezultate(t, x, 'Taylor IV');
        
    case '1c'
        data
        
        derivate = cell(1,1);
        derivate{1} = @(t,x)-2 * t + x - t^2 + 1;

        [t,x] = metodaTaylor(functie, derivate, a, b, alfa, N);
        ploteazaGrafic(functieSolutie, t, x, 'Taylor II', 1);
        scrieRezultate(t, x, 'Taylor II');
        
    case '1d'
        data
        
        [t,x] = metodaEulerModificata(functie, a, b, alfa, N);
        ploteazaGrafic(functieSolutie, t, x, 'Euler modificata', 1);
        scrieRezultate(t, x, 'Euler modificata');
        
    case '1e'
       data
        
       [t,x] = metodaHeun(functie, a, b, alfa, N);
       ploteazaGrafic(functieSolutie, t, x, 'Heun', 1);
       scrieRezultate(t, x, 'Heun');
       
    case '1f'
        data
        
        [t,x] = metodaRungeKutta(functie, a, b, alfa, N);
        ploteazaGrafic(functieSolutie, t, x, 'Runge Kutta', 1);
        scrieRezultate(t, x, 'Runge Kutta');
        
    case '2'
        A = [1 2; 2 1];
        b = [1; 2];
        
        functie = @(t,x)A * x + b;
        functieSolutie = @(t)[3 * exp(3 * t) + exp(-t) - 1;
                              3 * exp(3 * t) - exp(-t)];
        alfa = [3; 2];
        N = 200;
        a = 0;
        b = 3;
        
        metoda = 'punct_central';
        switch metoda
            case 'euler'
                [t,x] = metodaEuler(functie, a, b, alfa, N);    
                ploteazaGrafic(functieSolutie, t, x, 'Euler', 2);
                scrieRezultate(t, x, 'Euler_2');
                
            case 'euler_modificata'
                [t,x] = metodaEulerModificata(functie, a, b, alfa, N);    
                ploteazaGrafic(functieSolutie, t, x, 'Euler modificata', 2);
                scrieRezultate(t, x, 'Euler_modificata_2');
                
            case 'punct_central'
                [t,x] = metodaPunctuluiCentral(functie, a, b, alfa, N);    
                ploteazaGrafic(functieSolutie, t, x, 'Punct central', 2);
                scrieRezultate(t, x, 'Punct_central_2');
                
            case 'heun'
                [t,x] = metodaHeun(functie, a, b, alfa, N);    
                ploteazaGrafic(functieSolutie, t, x, 'Heun', 2);
                scrieRezultate(t, x, 'Heun_2');
                
            case 'runge_kutta'
                [t,x] = metodaRungeKutta(functie, a, b, alfa, N);    
                ploteazaGrafic(functieSolutie, t, x, 'Runge Kutta', 2);
                scrieRezultate(t, x, 'Runge_Kutta_2');
        end
    case '4'
        eval('aruncare')
end