function [S] = maclaurin(f, n)
%MACLAURIN Expand any function using Maclaurin Series
% input:
% f     -   function
% n     -   number of terms
% output:
% S     -   resulted expansion

syms x;

S = 0;

fact = 1;
x_p = 1;
i = 0;
df = matlabFunction(diff(f,i));
t = df(0) * x_p  / fact;

while (i < n)
    S = S + t;
    
    i = i + 1;
    
    fact = fact * i;
    x_p = x_p * x;
    df = matlabFunction(diff(f, i));
    
    t = df(0) * x_p / fact; 
end
end

