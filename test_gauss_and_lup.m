function test_gauss_and_lup()
format long;

disp ("Solving equation-system:")
A=rand(4);
b=sum(A,2);

for i=1:4
    disp(A(i,1) + "*x + " + A(i,2) +  "*y + " + A(i,3) + "*z +" + A(i,4) +"*t = " + b(i));
end

disp("Matrix division solution:");
disp(A\b);
disp("Gaussian Elimination solution:");
disp(gauss_elim([A b]));
disp("LUP Decomposition solution:");
disp(solve_with_lup(A,b));

format short;
end