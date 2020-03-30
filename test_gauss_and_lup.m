function test_gauss_and_lup()
format long;

disp ("Solving equation-system:")
A = [2 1 -1; -3 -1 2; -2 1 2];
b = [8; -11; -3];

for i=1:3
    disp(A(i,1) + "*x + " + A(i,2) +  "*y + " + A(i,3) + "*z = " + b(i));
end

disp("Matrix division solution:");
disp(A\b);
disp("Gaussian Elimination solution:");
disp(gauss_elim([A b]));
disp("LUP Decomposition solution:");
disp(solve_with_lup(A,b));

format short;
end