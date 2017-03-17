function [ Q, R ] = determinaQR( A )
%determinaQR

    Q = zeros(size(A));
    R = zeros(size(A));
    
    for k = 2:size(A,1)
        R(k,k) = sqrt(sum(A(1:size(A,1),k).^2) - sum(R(1:k-1,k).^2));
        for i = 1:size(A,1)
            suma = 0;
            for s = 1:k-1
                suma = suma + Q(i,s)*R(s,k);
            end
            Q(i,k) = R(k,k)*(A(i,k) - suma);
        end
    end
end

