function [ solutie ] = GaussFaraPivot( A, b )
%GaussFaraPivot 

    n = size(A,1);
    m = size(A,2) + 1;
    AExt = zeros(n,m);
    
    AExt(:,1:n) = A(:,:);
    AExt(:,n+1:m) = b(:);
    
    for k = 1:n-1
        for p = k:n
            if AExt(p,k) ~= 0
                aux = AExt(k,:);
                AExt(k,:) = AExt(p,:);
                AExt(p,:) = aux;
                break;
            end
        end
        
        for l = k+1:n
            valoare = AExt(l,k)/AExt(k,k);
            for j = k:n+1
                AExt(l,j) = AExt(l,j) - valoare * AExt(k,j);
            end
        end
    end

    if AExt(n,n) == 0
        disp('Sistem incompatibil');
    end
    
    solutie = SubstitutieDescendenta(A,AExt(:,end));
end

