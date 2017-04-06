function [ noduri ] = determinaNoduriInterpolare( a, b, n )
%determinaNoduriInterpolare 

    noduri = zeros(1,n+1);
    noduri(1) = a;
    
    for idx = 2:n+1
        h = (b-a)/n;
        noduri(idx) = noduri(idx-1) + h;
    end
end

