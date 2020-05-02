function y = lagrange(X, Y)
%LAGRANGE Calculates value from dataset with Lagrange interpolation
% input:
% x     -   function argument
% X     -   distinct values corresponding to x-axis
% Y     -   distinct values corresponding to Y-axis (size equals to previous set)
% output:
% y     -   interpolated function value

syms y(x);
y(x) = 0;

[~,m] = size(X);

for i=1:m
    syms l(x);
    l(x) = 1;
    for j=1:m
        if j ~= i
            l(x) = l(x) * (x - X(j)) / (X(i) - X(j));
        end
    end
    y(x) = y(x) + Y(i) * l;
end

end