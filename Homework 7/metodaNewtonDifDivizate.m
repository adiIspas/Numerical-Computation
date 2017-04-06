function [ y ] = metodaNewtonDifDivizate( functie, a, b, n )
%metodaNewtonDifDivizate 
    
    Q = zeros(n+1,n+1);
    x = determinaNoduriInterpolare(a, b, n);

    for idx = 1:n+1
        Q(idx,1) = functie(x(idx));
    end
    
    for idx = 2:n+1
        for idy = idx:n+1
            Q(idy,idx) = (Q(idy,idx-1) - Q(idy-1,idx-1))/(x(idy) - x(idy-idx+1));
        end
    end
    
    
    polinom = [];
    for k = 2:n+1
        polinom = [polinom '+' num2str(Q(k,k))];
        for i = 1:k
        polinom = [polinom '.*(x-' num2str(x(i)) ')'];
        end
    end
    
    polinom = [num2str(Q(1,1)) polinom];
    y = inline(polinom,'x');
end

