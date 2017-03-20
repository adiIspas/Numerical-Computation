function [ x, Q, R ] = factorizareQR(A, b)
%factorizareLU

    [Q, R] = determinaQR(A);
    y = Q'*b;
    x = substitutieAscendenta(R,y);
end

