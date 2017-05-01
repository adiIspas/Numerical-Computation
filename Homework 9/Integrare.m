function [ I ] = Integrare( f, a, b, m, metoda )
%Integrare
    
    I = 0;
    switch metoda
        case 'dreptunghiului'
            x = linspace(a, b, 2 * m + 1);
            h = (b - a)/(2 * m);
            
            I = 2 * h * sum(f(x(2:2:end)));
        case 'trapezului'
            x = linspace(a, b, m + 1);
            h = (b - a)/m;
            
            I = (h/2) * (f(x(1)) + 2 * sum(f(x(2:end))) + f(x(end)));
        case 'simpson'
            x = linspace(a, b, 2 * m + 1);
            h = (b - a)/(2 * m);
            
            I = (h/3) * (f(x(1)) + 4 * sum(f(x(2:2:end))) + 2 * sum(f(x(3:2:end-1))) + f(x(end)));
        case 'newton'
            x = linspace(a, b, m);
            h = (b - a)/m;
            
            I = sum(h * f(x(1:end)));
    end
end

