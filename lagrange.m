function y = lagrange(x, X, Y)
%LAGRANGE Calculates value from dataset with Lagrange interpolation
% input:
% x - function argument
% X - distinct values corresponding to x-axis
% Y - distinct values corresponding to Y-axis (size equals to previous set)
% output:
% y - interpolated function value

y = 0;

[~,m] = size(X);

for i=1:m
    l = 1;
    for j=1:m
        if j ~= i
            l = l * (x - X(j)) / (X(i) - X(j));
        end
    end
    y = y + Y(i) * l;
end

end