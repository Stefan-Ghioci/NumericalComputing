function basis_poly_plot(n, X)
%BASIS_POLY_PLOT Plot the Lagrange basis polynomials within a given degree
% input:
% n     -   maximum degree of polynomial to plot
% X     -   set of nodes


hold on;
for j=1:n
    syms l(x);
    l(x) = 1;
    for m=1:n
        if m ~= j
            l(x) = l(x) * (x - X(m)) / (X(j) - X(m));
        end
    end
    
    fplot(l);
end

hold off;

end