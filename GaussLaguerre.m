function [x, w] = GaussLaguerre(n, alpha)
%GAUSSLAGUERRE Gauss-Laguerre quadrature for [0,inf) interval
% input:
% n     -   truncation point count
% alpha -   Laguerre specific parameter
% output:
% x     -   nodes
% w     -   weights

i   = 1:n;
a   = (2*i-1) + alpha;
b   = sqrt( i(1:n-1) .* ((1:n-1) + alpha) );
CM  = diag(a) + diag(b,1) + diag(b,-1);

[V, L]   = eig(CM);
[x, ind] = sort(diag(L));

V       = V(:,ind)';
w       = gamma(alpha+1) .* V(:,1).^2;