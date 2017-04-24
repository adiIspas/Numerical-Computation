function [ y ] = splineCubic( functie, functieDerivata, a, b, n, xValue )
%splineCubica 
    
    x = zeros(1,n);
    
    x(1) = a;
    h = (b - a)/n;
    
    for i = 2:n + 1
        x(i) = x(i - 1) + h;
    end
    
    matriceAsociata = zeros(n+1, n+1);
    matriceAsociata(1,1) = 1;
    matriceAsociata(end,end) = 1;
    for i = 2:n
        matriceAsociata(i,i-1) = 1;
        matriceAsociata(i,i) = 4;
        matriceAsociata(i,i+1) = 1;
    end

    termeniLiberi = zeros(n+1,1);
    termeniLiberi(1) = functieDerivata(x(1));
    termeniLiberi(end) = functieDerivata(x(n+1));
    for j = 2:n
        termeniLiberi(j,1) = (3/h) * (functie(x(j+1)) - functie(x(j-1)));
    end
    
    b = matriceAsociata^-1*termeniLiberi;
    
    a = zeros(1,n);
    c = zeros(1,n);
    d = zeros(1,n);
    
    for j = 1:n
        a(j) = functie(x(j));
        c(j) = -(b(j+1) - 2 * b(j))/h + 3 * (functie(x(j+1)) - functie(x(j)))/h^2;
        d(j) = (b(j) + b(j+1))/h^2 - 2 * (functie(x(j+1)) - functie(x(j)))/h^3;
    end
    
    y = 0;
    for j = 1:n
        if (xValue >= x(j)) && (xValue <= x(j+1))
            y = a(j) + b(j) * (xValue - x(j)) + c(j) * (xValue - x(j))^2 + d(j) * (xValue - x(j))^3;
        end
    end
end