function  S = hermite(X, Y, DY)
%%HERMITE  Interpolated polynomial generated using Hermite method
% input:
% X     -   list of nodes
% Y     -   list of function values given X
% DY    -   list of derivative function values given X
% output:
% S     -   interpolated polynomial

[~, m] = size(X);
for i=1:m
    z(2*i-1) = X(i);
    z(2*i) = X(i);
    
    Q(2*i-1, 1) = Y(i);
    Q(2*i, 1) = Y(i);
    Q(2*i, 2) = DY(i);
    
    if i~=1
        Q(2*i-1, 2)=(Q(2*i-1, 1) - Q(2*i-2, 1)) / (z(2*i-1) - z(2*i-2));
    end
end
for i=3:2*m
    for j=3:i
        Q(i, j) = (Q(i, j-1) - Q(i-1, j-1)) / (z(i) - z(i-j+1));
    end
end
syms S(x);
syms p1(x);
S(x) = Q(1, 1);
p1(x) = 1;
for i=2:2*m
    if mod(i, 2)==1
        p1(x) = p1(x) * (x - X((i-1)/2));
    else
        p1(x) = p1(x) * (x - X(i/2));
    end
    S(x) = S(x) + p1(x) * Q(i,i);
end
end
