function [ x, L, U ] = factorizareLU(A, b)
%factorizareLU

    [L, U] = determinaLU(A);
     y = substitutieAscendenta(L,b);
     x = substitutieDescendenta(U,y');
end

