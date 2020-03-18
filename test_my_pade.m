function test_my_pade()
format long;
syms x;
f(x) = exp(x);

disp("---test exponential---")
 
R22(x) = my_pade(f,2,2);
R41(x) = my_pade(f,4,1);
R55(x) = my_pade(f,5,5);

disp("real e")
disp(eval(f(1)))

disp("Pade 2,2")
disp(eval(R22(1)))

disp("error")
disp(eval(R22(1)-f(1)))

disp("Pade 4,1")
disp(eval(R41(1)))

disp("error")
disp(eval(R41(1)-f(1)))

disp("Pade 5,5")
disp(eval(R55(1)))

disp("error")
disp(eval(R55(1)-f(1)))


f(x) = sin(x);

disp("---test sine---")
 
R22(x) = my_pade(f,2,2);
R41(x) = my_pade(f,4,1);
R55(x) = my_pade(f,5,5);

disp("real sin(pi/4)")
disp(eval(f(pi/4)))

disp("Pade 2,2")
disp(eval(R22(pi/4)))

disp("error")
disp(eval(R22(pi/4)-f(pi/4)))

disp("Pade 4,1")
disp(eval(R41(pi/4)))

disp("error")
disp(eval(R41(pi/4)-f(pi/4)))

disp("Pade 5,5")
disp(eval(R55(pi/4)))

disp("error")
disp(eval(R55(pi/4)-f(pi/4)))
end