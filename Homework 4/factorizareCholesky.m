function [ x, L ] = factorizareCholesky(A, b)
%factorizareCholesky 

    L = determinaL(A);
    y = substitutieAscendenta(L,b);
    x = substitutieDescendenta(L',y');
end

