function [ t,x ] = metodaPunctuluiCentral( functie, a, b, alfa, N )
%metodaPunctuluiCentral

    t(1) = a;
    h = (b - a) / N;
    
    for i = 2:N + 1
        t(i) = t(i - 1) + h;
    end
    
    x(1) = alfa;
    
    for i = 1:N
        k1 = h * functie(t(i),x(i));
        k2 = h * functie(t(i) + h/2, x(i) + k1/2);
        
        x(i + 1) = x(i) + k2; 
    end

end

