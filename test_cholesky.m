function test_cholesky()

format long;
for n=1:5
    disp ("Solving equation-system Ax = b, where A - posdef hermitian:")
    
    A = generate_posdef_hermitian(n)
    b = sum(A, 2)
    
    disp("Expected solution:");
    disp(ones(n, 1))
    
    disp("Matrix division solution:");
    disp(A\b);
    
    disp("Cholesky Decomposition solution:");
    disp(solve_cholesky(A, b));
end
format short;

end