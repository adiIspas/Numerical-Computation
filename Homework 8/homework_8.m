% Adrian ISPAS, Grupa 343

clear
clc

numarExercitiu = 3;

switch numarExercitiu
    case 1
        a = -1;
        b = 1;
        n = 4;
        x = 1;
        pas = 0.1;
        noduri = 2 * (n + 1);
        functie = @(x)exp(2*x);

        resultFunctie = functie(a:pas:b);
        resultSpline = zeros(1,size(a:pas:b,1));
        
        idx = 1;
        for i = a:pas:b
            resultSpline(idx) = splineLine(functie, a, b, noduri, i);
            idx = idx + 1;
        end
        
        plot(resultFunctie);
        hold on
        plot(resultSpline);
        hold off
        
    case 2
        a = -1;
        b = 1;
        n = 4;
        x = 1;
        pas = 0.1;
        noduri = 10 * (n + 1);
        functie = @(x)exp(2*x);
        functieDerivata = @(x)2*exp(2*x);
        
        resultFunctie = functie(a:pas:b);
        resultSpline = zeros(1,size(a:pas:b,1));
        
        idx = 1;
        for i = a:pas:b
            resultSpline(idx) = splinePatratic(functie, functieDerivata, a, b, noduri, i);
            idx = idx + 1;
        end
       
        plot(resultFunctie);
        hold on
        plot(resultSpline);
        hold off
        
    case 3
        a = -1;
        b = 1;
        n = 4;
        x = 1;
        pas = 0.1;
        noduri = 10 * (n + 1);
        functie = @(x)exp(2*x);
        functieDerivata = @(x)2*exp(2*x);
        
        resultFunctie = functie(a:pas:b);
        resultSpline = zeros(1,size(a:pas:b,1));
        
        idx = 1;
        for i = a:pas:b
            resultSpline(idx) = splineCubic(functie, functieDerivata, a, b, noduri, i);
            idx = idx + 1;
        end
        
        plot(resultFunctie);
        hold on
        plot(resultSpline);
        hold off
end