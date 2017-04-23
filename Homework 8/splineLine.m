function [ y ] = splineLine( functie, a, b, n, xValue )
%splineLine 

    x = zeros(1,n);
    x(1) = a;
    h = (b - a)/n;
    
    for i = 2:n + 1
        x(i) = x(i-1) + h;
    end

    a = zeros(1,n);
    b = zeros(1,n);
    
    for j = 1:n
        a(j) = functie(x(j));
        b(j) = (functie(x(j+1)) - functie(x(j)))/(x(j+1) - x(j));
    end
    
    y = 0;
    for j = 1:n 
        if (xValue >= x(j)) && (xValue <= x(j+1))
            y = a(j) + b(j) * (xValue - x(j));
        end
    end
end

