function [x,N] = sor(A, b, error, max_iter)
%%JACOBI Successive OverRelaxation method for iterative diagonally dominant equation-system solving
% input:
% A         - coefficient matrix
% b         - free term matrix
% error     - error between real solution and computed value
% max_iter  - maximum number of iterations until algorithm is interrupted
%             if there is no convergence
% output:
% x         - solution matrix
% N         - number of iterations needed for convergence

L = -tril(A, -1);
U = -triu(A, 1);
D = A + L + U;

J = D \ (L + U);
radius = max(abs(eig(J)));
omega = 2 / (1 + sqrt(1 - radius * radius));

T = (D - omega * L) \ ((1 - omega) * D + omega * U);
c = omega * (inv(D - omega * L)) * b;

k = 0;
x_k = b;
x_kp1 = T * x_k + c;

while norm(x_kp1 - x_k) > (1 - norm(T)) / norm(T) * error % convergence condition
    if k >= max_iter
        error("Maximum number of iterations reached, no convergence")
    end
    
    x_k = x_kp1;
    x_kp1 = T* x_k + c;
    
    k = k + 1;

x = x_k;
N = k;
end


end