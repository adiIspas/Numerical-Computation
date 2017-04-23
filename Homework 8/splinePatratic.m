function [ y ] = splinePatratic(functie, functieDerivata, a, b, n, xValue)
%splinePatratic 

    x = zeros(1,n);
    x(1) = a;
    h = (b - a)/n;
    
    for i = 2:n + 1
        x(i) = x(i-1) + h;
    end

    a = zeros(1,n);
    b = zeros(1,n);
    c = zeros(1,n);
    
    b(1) = functieDerivata(x(1));
    for j = 1:n
        a(j) = functie(x(j));
        
        if j <= n -1
            b(j+1) = -b(j) + (2/h)*(functie(x(j+1)) - functie(x(j)));
        end
        
        c(j) = (1/h^2) * (functie(x(j+1)) - functie(x(j))) - h*b(j);
    end
    
    y = 0;
    for j = 1:n 
        if (xValue >= x(j)) && (xValue <= x(j+1))
            y = a(j) + b(j) * (xValue - x(j)) + c(j) * (xValue - x(j))^2;
        end
    end

end

