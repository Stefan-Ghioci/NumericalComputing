function y = poly2lagrange(n, f, x, X)
%POLY2LAGRANGE Given function and argument, approximate value using Lagrange interpolation 
% input:
% n     -   degree for interpolation polynomial
% f     -   function
% x     -   argument
% output:
% y     -   value


y = 0;

for i=1:n
    l = 1;
    for j=1:n
        if j ~= i
            l = l * (x - X(j)) / (X(i) - X(j));
        end
    end
    y = y + f(X(i)) * l;
end

end