function [ x, numarIteratii ] = metodaGaussSeidelRelaxata( A, a, epsilon, sigma )
%metodaGaussSeidel 
    
    n = size(A,1);
    x = zeros(2,n);
    numarIteratii = 1000;
    
    for k = 2:numarIteratii
       rezultatCurent = [];
       for i = 1:n
           suma_1 = 0;
           suma_2 = 0;
           
           for j = 1:i-1
            suma_1 = suma_1 + A(i,j) * x(k,j);
           end
           
           for j = i+1:n
            suma_2 = suma_2 + A(i,j) * x(k-1,j);
           end
           
           rezultatCurent = [rezultatCurent (1/A(i,i)) .* ( -sigma * suma_1 + A(i,i) * (1 - sigma) * x(k-1,i) ...
               -sigma * suma_2 + sigma^a(i))];
       end
       x = [x; rezultatCurent];
    end
    
    x = x(end:end,:);
    numarIteratii = k;
end

