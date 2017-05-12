function [ t,x ] = metodaHeun( functie, a, b, alfa, N )
% metodaHeun 

  t(1) = a;
  h = (b - a) / N;
  
  for i = 2:N + 1
    t(i) = t(i - 1) + h;
  end
  
  x = zeros(size(alfa, 1), N + 1);
  x(:,1) = alfa;
  
  for i = 1:N
    k1 = h * functie(t(i),x(:,i));
    k2 = h * functie(t(i) + (2*h)/3,x(:,i)+(2*k1)/3);
    
    x(:,i + 1) = x(:,i) + (k1 + 3*k2)/4;
  end

end

