function [ x, numarIteratii ] = metodaJacobiRelaxata( A, a, epsilon, sigma )
%metodaJacobiRelaxata

     D = diag(A) .* eye(size(A,1));
     B = eye(size(A,1)) - sigma .* D^(-1) * A;
     b = sigma .* D^(-1) * a;
     
     k = 1;
     x = zeros(1,size(A,1));
     x = [x; B .* x(1,:) + b];
     k = k + 1;
     
     while normaMatriceInfinit(x(k,:) - x(k-1,:)) > epsilon
        x = [x; B .* x(k - 1,:) + b];
        k = k + 1;
     end
    
    x = x(end:end,:);
    numarIteratii = k;
end

