function [ Q, R ] = determinaQR( A )
%determinaQR

    Q = zeros(size(A));
    R = zeros(size(A));
    
    R(1,1) = sqrt(sum(A(1:size(A,1),1).^2));
    Q(1:size(A,1),1) = A(1:size(A,1),1)/R(1,1);
    
    for k = 2:size(A,1)
        R(1:k-1,k) = sum(A(1:size(A,1),k) .* Q(1:size(A,1),1:k-1));
        R(k,k) = sqrt(sum(A(1:size(A,1),k).^2) - sum(R(1:k-1,k).^2));

        for i = 1:size(A,1)
            suma = 0;
            for j = 1:k-1
                suma = suma + Q(i,j)*R(j,k);
            end
            Q(i,k) = 1/R(k,k)*(A(i,k) - suma);
        end
    end
end

