function df = MetRichardson(f,x,h,n,ph)

	switch ph
        case 1
            for i=1:n
                Q(i,1) = phi(x,h/2^(i-1),f);
            end
        case 2
            for i=1:n
                Q(i,1) = phi2(x,h/2^(i-1),f);
            end
    end
    
    for j = 2:n
        for i= j:n
            Q(i,j) = Q(i,j-1) + 1/(2^(j-1)-1)*(Q(i,j-1) - Q(i-1,j-1));
        end
    end
    
    df = Q(n,n);
end

function p = phi(x,h,f)
    p = (f(x+h) - f(x))/h;
end

function p = phi2(x,h,f)
    p = (f(x+h)-2*f(x)+f(x-h))/h^2;
end