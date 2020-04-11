function test_iterative()

format long;

n = 4; 

disp("Solving Ax=b, where A is a SDD matrix")

A = gen_sdd(n)
b = A * (1:n)'

disp("Expected solution:")
disp((1:n)');

error = 0.0001;
[x,N]=jacobi(A,b,error,999);

disp("Jacobi method solution (error=" + error + ") in " + N + " iterations:")
disp(x);
format short;
end