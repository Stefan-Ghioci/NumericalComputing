function X = solve_cholesky(A, b)
%%SOLVE_WITH_LUP Solve equation-system with Cholesky Decomposition
% input:
% A     - coefficient matrix
% b     - free term matrix
% output:
% X     - solution matrix

L = cholesky(A);

X = L' \ (L \ b);

end