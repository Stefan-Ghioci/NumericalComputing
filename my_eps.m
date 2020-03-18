function x = my_eps()
%MY_EPS Calculate eps - distance from 1.0 to next number

x = 1;

while 1 + x/2 ~= 1
    x = x / 2;
end