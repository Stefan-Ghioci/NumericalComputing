function x = my_realmin()
%MY_EPS Calculate realmin - smallest positive floating-point value

x = 1;

while x/2 ~= 0.0
    x = x / 2;
end