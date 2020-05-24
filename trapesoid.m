function I=trapesoid(f, a, b, n)
%%TRAPESOID Trapesoid repeated method for integration
% input:
% f     -   function
% a     -   left margin
% b     -   right margin
% n     -   node count
% output:
% I     -   integral

h = (b-a) / n;
I = (f(a) + f(b) + 2 * sum(f(1:n-1 * h + a))) * h/2;
end