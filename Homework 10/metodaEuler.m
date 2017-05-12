function [t, x] = metodaEuler( functie, a, b, alfa, N )
% metodaEuler 
  
    t(1) = a;
    h = (b - a) / N;
    
    for i = 2:N + 1
        t(i) = t(i - 1) + h; 
    end

    x = zeros(size(alfa, 1), N + 1);
    x(:,1) = alfa;
    
    for i = 1:N
        x(:,i + 1) = x(:,i) + h .* functie(t(i),x(:,i));
    end
end

