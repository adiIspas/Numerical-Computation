function [ t,x ] = metodaRungeKutta(functie, a, b, alfa, N)
% metodaRungeKutta 

    t(1) = a;
    h = (b - a) / N;
    
    for i = 2:N + 1
        t(i) = t(i - 1) + h;
    end

    x = zeros(size(alfa, 1), N + 1);
    x(:,1) = alfa;
    
    for i = 1:N
        k1 = h * functie(t(i),x(:,i));
        k2 = h * functie(t(i) + h/2,x(:,i) + k1/2);
        k3 = h * functie(t(i) + h/2,x(:,i) + k2/2);
        k4 = h * functie(t(i) + h,x(:,i) + k3);
        
        x(:,i + 1) = x(:,i) + (k1 + k2 + k3 + k4)/6;
    end
end

