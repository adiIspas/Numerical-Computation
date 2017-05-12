functie = @(t,x)x - t ^ 2 + 1;
functieSolutie = @(t)(t + 1).^2 - 0.5 .* exp(t);

a = 0;
b = 2;
alfa = 0.5;
N = 10;