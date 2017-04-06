function [ polinom ] = metodaLagrange( functie, a, b, n )
%metodaLagrange 

    x = determinaNoduriInterpolare(a, b, n);
    y = functie(x);
    
    polinom = [num2str(0)];
    for k = 1:n+1
        polinom = [polinom '+' compunePolinom(x,n,k) '*' num2str(y(k))];
    end
    
    polinom = inline(polinom,'x');
end

function polinomIntermediar = compunePolinom(x, n, k)
    
    polinomTemp1 = [num2str(1)];
    polinomTemp2 = [num2str(1)];

    for k1 = 1:n+1
        if k1 ~= k
            polinomTemp1 = [polinomTemp1 '*(x-' num2str(x(k1)) ')'];
        end
    end

    for k1 = 1:n+1
        if k1 ~= k
            polinomTemp2 = [polinomTemp2 '*' num2str(x(k) - x(k1))];
        end
    end
    
    polinomIntermediar = ['(' polinomTemp1 ')/(' polinomTemp2 ')'];
end
