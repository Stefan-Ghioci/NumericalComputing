function [x, w] = GaussLegendre(n)
%GAUSSLEGENDRE Gauss-Legendre quadrature for [-1,1] interval
% input:
% n     -   truncation point count
% output:
% x     -   nodes
% w     -   weights

i   = 1:n-1;
a   = i./sqrt(4*i.^2-1);
CM  = diag(a,1) + diag(a,-1);

[V, L]   = eig(CM);
[x, ind] = sort(diag(L));

V       = V(:,ind)';
w       = 2 * V(:,1).^2;