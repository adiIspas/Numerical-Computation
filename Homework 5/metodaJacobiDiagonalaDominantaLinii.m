function [ x, numarIteratii ] = metodaJacobiDiagonalaDominantaLinii( A, a, epsilon )
%metodaJacobiDominantaLinii
    
    dominanta = 1;
    D = diag(A) .* eye(size(A,1));
    B = eye(size(A,1)) - D^(-1)*A;
    b = D^(-1) * a;
    
    q = normaMatriceInfinit(B);
    k = 1;
    x = zeros(1,size(A,1));
    x = [x; B .* x(1,:) + b];
    
    for i = 1:size(A,1)
        if abs(A(i,i)) <= abs(sum(A(i,:)) - A(i,i))
            dominanta = 0;
            break;
        end
    end
    
    if dominanta == 0
        disp('Matricea nu este dominanta');
    else
        while (((q^k)/(1 - q)) * normaMatriceInfinit(x(2,:) - x(1,:))) > epsilon
                k = k + 1;
                x = [x; B .* x(k - 1,:) + b];
                k = k + 1;
        end
    end
    
    x = x(end:end,:);
    numarIteratii = k;
end

