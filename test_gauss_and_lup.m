function test_gauss_and_lup()

format long;
for n=1:5
    disp ("Solving equation-system Ax = b:")
    
    A = rand(n)
    b = sum(A,2)
    
    disp("Matrix division solution:");
    disp(A\b);
    
    disp("Gaussian Elimination solution:");
    disp(gauss_elim([A b]));
    
    disp("LUP Decomposition solution:");
    disp(solve_lup(A,b));
end
format short;

end