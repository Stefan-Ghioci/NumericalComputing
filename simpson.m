function I=simpson(f,a,b,n)
%%TRAPESOID Simpson method for integration
% input:
% f     -   function
% a     -   left margin
% b     -   right margin
% n     -   node count
% output:
% I     -   integral

h = (b-a) / n;
x2 = [1:n-1] * h + a;
x4 = [0:n-1] * h + a + h/2;
I=h/6*(f(a) + f(b) + 2 * sum(f(x2))+4 * sum(f(x4)));
end