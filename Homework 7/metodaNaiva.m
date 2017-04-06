function [ polinom ] = metodaNaiva( functie, a, b, n, x )
%metodaNaiva 

    polinom = [num2str(0)];
    for i = 1:n+1
        polinom = [polinom '+' num2str(x(i)) '*x^' num2str(i-1)];
    end

    polinom = inline(polinom,'x');
end

