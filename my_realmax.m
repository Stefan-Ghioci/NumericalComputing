function x = my_realmax()
%MY_REALMAX Calculate largest floating-point number

x = 2 - my_eps;
while x * 2 ~= Inf
    x = x * 2;
end
end