function test_limits()
format long;

disp("system eps")
disp(eps)

disp("computed eps")
disp(my_eps)

disp("relative error")
disp(abs(my_eps-eps)/my_eps)

disp("system realmax")
disp(realmax)

disp("computed realmax")
disp(my_realmax)

disp("relative error")
disp(abs(my_realmax-realmax)/my_realmax)

disp("system realmin")
disp(realmin)

disp("computed realmin")
disp(my_realmin)

disp("relative error")
disp(abs(my_realmin-realmin)/my_realmin)

format short;
end