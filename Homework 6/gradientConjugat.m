function [ x ] = gradientConjugat( A, b )
%gradientConjucat
%     epsilon = 10^(-2);
    
    x = zeros(size(A,1),1);
    r = A * x(1,:) - b;
    v = -r;
    alpha = zeros(1,size(A,1));
    beta = zeros(1,size(A,1));
    
    for k = 1:size(A,1)
        alpha(k) = -(dot(r(:,k),v(:,k)))/(dot(A*v(:,k),v(:,k)));
        x = [x x(:,k) + alpha(k)*v(:,k)];
        r = [r A * x(:,k+1) - b];
        
        if (sum(r(:,k+1)) == 0) == 1
            break;
        end

        beta(k) = (dot(r(:,k+1),A*v(:,k+1)))/(dot(A*v(:,k),v(:,k)));
        v = [v beta(k)*v(:,k) - r(:,k+1)];
        
%         if k > 1
%             if norma2Matrice( x(:,k)' - x(:,k-1)' ) < epsilon
%                 done = true;
%             end
%         end
%         k = k + 1;
    end
    
    x = x(:,end:end)';
end

