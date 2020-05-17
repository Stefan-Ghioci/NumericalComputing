function plot_hermite(f)
%LAGRANGE_PLOT Plot function and Hermite polynomial
% input:
% f     -   function

X = [-5,0,5];
[~,n] = size(X);

Y = zeros(n);
DY = zeros(n);

for i=1:n
    syms dy(x);
    dy(x) = diff(f);
    Y(i) = f(X(i));
    DY(i) = dy(X(i));
end

Hf = hermite(X, Y, DY);

hold on;

fplot(Hf);
fplot(f,'--r');
legend("Hermite", "Real function")

hold off;

end