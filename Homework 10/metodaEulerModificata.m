function [ t, x ] = metodaEulerModificata( functie, a, b, alfa, N )
% metodaEulerModificata 

    t(1) = a;
    h = (b - a) / N;
    
    for i = 2:N + 1
        t(i) = t(i - 1) + h;
    end
    
    x(1) = alfa;
    
    for i = 1:N
        k1 = h * functie(t(i),x(i));
        k2 = h * functie(t(i) + h, x(i) + k1);
        
        x(i + 1) = x(i) + (k1 + k2)/2; 
    end
end

