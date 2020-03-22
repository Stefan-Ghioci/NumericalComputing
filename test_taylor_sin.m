function test_taylor_sin()
disp("sin(5/2 * pi)")
disp(sin(5/2 * pi))

[S, i] = taylor_sin(5/2 * pi, 0.0000001);

disp("taylor sin(5/2 * pi) with 10^-7 error")
disp("value")
disp(S)
disp("term count")
disp(i)

[S, i] = taylor_sin(5/2 * pi, 0.00001);

disp("taylor sin(5/2 * pi) with 10^-5 error")
disp("value")
disp(S)
disp("term count")
disp(i)

end