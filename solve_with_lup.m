function X = solve_with_lup(A,b)
%%SOLVE_WITH_LUP Solve equation-system with LUP decomposition
% input:
% A     - coefficient matrix
% b     - free term matrix
% output:
% X     - solution matrix

[L,U,P] = lup_decomp(A);

[n,~] = size(A);

b = P * b;
X = zeros(n, 1);
y = zeros(n, 1);

y(1) = b(1) / L(1,1);

for i=2:n
    y(i)= (b(i) - L(i,1:i-1) * y(1:i-1)) / L(i,i);
end

X(n) = y(n) / U(n,n);

for i=n-1:-1:1
    X(i) = (y(i) - U(i, i+1:n) * X(i+1:n)) / U(i,i);
end

end