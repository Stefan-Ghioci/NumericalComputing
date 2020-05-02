function lagrange_plot(f)
%LAGRANGE_PLOT Plot function and Lagrange polynomial
% input:
% f     -   function


X = -5:5;
Y = zeros(11);

for i=1:11
    Y(i) = f(X(i));
end

Lmf = lagrange(X,Y);

hold on;

fplot(f,'--r');

fplot(Lmf);

hold off;

end