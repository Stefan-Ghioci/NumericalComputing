function [x, w] = GaussHermite(n) 
%GAUSSHERMITE Gauss-Hermite quadrature for (-inf,inf) interfal
% input:
% n     -   truncation point count
% output:
% x     -   nodes
% w     -   weights

i   = 1:n-1;
a   = sqrt(i/2);
CM  = diag(a,1) + diag(a,-1);

[V, L]   = eig(CM);
[x, ind] = sort(diag(L));

V       = V(:,ind)';
w       = sqrt(pi) * V(:,1).^2;