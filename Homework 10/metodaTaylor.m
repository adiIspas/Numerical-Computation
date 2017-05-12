function [ t, x ] = metodaTaylor( functie, derivate, a, b, alfa, N )
% metodaTaylor

    t(1) = a;
    h = (b - a) / N;
    p = size(derivate,1);
    
    if p == 1
        tempDerivate = cell(1,1);
        tempDerivate{1} = derivate;
    else
      tempDerivate = derivate;
    end

    derivate = cell(0,0);
    derivate{1} = functie;
    derivate = [derivate; tempDerivate];
    
    for i = 2:N + 1
        t(i) = t(i - 1) + h;
    end

    x(1) = alfa;
    
    for i = 1:N
        
        suma = 0;
        for k = 1:p
            suma = suma + ((h ^ (k - 1))/factorial(k)) * derivate{k}(t(i),x(i));
        end
        x(i + 1) = x(i) + h * suma;
    end
end

