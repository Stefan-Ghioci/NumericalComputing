function A = generate_posdef_hermitian(n)
%%GENERATE_POSDEF_HERMITIAN Generate positive-definite hermitian matrix
% input:
% n     - matrix size
% output:
% A     - hermitian matrix

A = rand(n);
A = A + A';
A = A + max(sum(A,2)) * eye(n);

end