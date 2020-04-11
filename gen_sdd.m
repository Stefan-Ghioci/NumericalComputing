function A = gen_sdd(n)
%GEN_SDD Generate strictly diagonally dominant square matrix
% input:
% n     - matrix size
% output:
% A     - SDD matrix

A = rand(n);
A = A + A';
A = A + max(sum(A,2)) * eye(n);

end