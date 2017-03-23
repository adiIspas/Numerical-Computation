function [ x, numarIteratii ] = metodaJacobi( A, a, epsilon )
%metodaJacobi 

    B = eye(size(A,1)) - A;
    q = normaMatriceInfinit(B);
    k = 1;
    x = zeros(1,size(A,1));
    x = [x; B .* x(1,:) + a];
    
    if q >= 1
        disp('Metoda Jacobi nu asigura convergenta');
    else
        while (((q^k)/(1 - q)) * normaMatriceInfinit(x(2,:) - x(1,:))) > epsilon
                k = k + 1;
                x = [x; B .* x(k - 1,:) + a];
                k = k + 1;
        end
    end
    
    x = x(end:end,:);
    numarIteratii = k;
end

