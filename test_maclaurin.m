function test_maclaurin()
format long;

syms x;
f(x) = exp(x);

disp("---test exponential---")

S3(x) = maclaurin(f, 3)
S10(x) = maclaurin(f, 10)
S20(x) = maclaurin(f, 20)

disp("real e")
disp(exp(1))

disp("3-term calc e ")
disp(eval(S3(1)))
disp("error")
disp(eval(S3(1) - exp(1)))

disp("10-term calc e ")
disp(eval(S10(1)))
disp("error")
disp(eval(S10(1) - exp(1)))

disp("20-term calc e ")
disp(eval(S20(1)))
disp("error")
disp(eval(S20(1) - exp(1)))
end