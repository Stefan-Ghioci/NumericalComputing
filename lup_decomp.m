function [L,U,P] = lup_decomp(A)
%%LUP_DECOMP LUP Decomposition (LU factorization with partial pivoting)
% input:
% A     - input square matrix
% output:
% L     - lower triangular matrix
% U     - upper triangular matrix
% P     - permutation matrix

[n, ~] = size(A);

P = eye(n);

for k=1:n
    [~, i] = max(abs(A(k:n,k)));
    i = i+k-1;
    
    if k~=i
        P([k, i], :) = P([i, k], :);
        A([k, i], :) = A([i, k], :);
    end
    
    if A(k,k) == 0
        error('Singular matrix')
    end
    
    A(k+1:n,k) = A(k+1:n,k) / A(k,k);
    A(k+1:n, k+1:n) = A(k+1:n, k+1:n) - A(k+1:n, k)*A(k, k+1:n);
end

L = tril(A, -1) + eye(n);
U = triu(A);

end