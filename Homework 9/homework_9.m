% Adrian ISPAS, Grupa 343
clear, clc
numarExercitiu = 3;

switch numarExercitiu
    case 1
        f = inline('x.^3-x.^2-4*x+4','x');
        fprim = inline('3*x.^2 - 2*x -4','x');
        f2prim = inline('6*x - 2','x');
        a = -3; b = 3;
        x = linspace(-3,3,100);
        h = x(2) - x(1);
        n = 8; %Ordinul de aproximare (4,6,8)
        for i = 1:length(x)
            df(i) = MetRichardson(f,x(i),h,n,1);%Apelam functia
            %in fiecare nod al discretizarii
        end
        plot(x,df) %Graficul derivatei calculate
        %prin metoda Richardson
        hold on
        plot(x,fprim(x)) %Graficul derivatei exacte
        figure(2)
        plot(x,df - fprim(x))%Eroarea
        
        disp('Apasa orice tasata pentru a continua')
        pause
        close all

        for i = 1:length(x)
            d2f(i) = MetRichardson(f,x(i),h,n-1,2);%Apelam functia
            %in fiecare nod al discretizarii
        end
        plot(x,d2f) %Graficul derivatei calculate
        %prin metoda Richardson
        hold on
        plot(x,f2prim(x)) %Graficul derivatei exacte
        figure(2)
        plot(x,d2f - f2prim(x))%Eroarea
    case 3
      f = @(x)x.^3 - x.^2 - 4.*x + 4;
      a = -3;
      b = 3;
      m = 100;
      
      disp('-- Valoarea integralei --')
      Id = integral(f,a,b)
      
      disp('-- Dreptunghiului --')
      I0 = Integrare( f, a, b, m, 'dreptunghiului' )
      err = abs(Id - I0)
      
      disp('-- Trapezului --')
      I1 = Integrare( f, a, b, m, 'trapezului' )
      err = abs(Id - I1)
      
      disp('-- Simpson --')
      I2 = Integrare( f, a, b, m, 'simpson' )
      err = abs(Id - I2)
      
      disp('-- Newton --')
      I3 = Integrare( f, a, b, m, 'newton' )
      err = abs(Id - I3)
      
end