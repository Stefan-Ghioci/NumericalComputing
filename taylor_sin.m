function [S, i] = taylor_sin(x, err)
%TAYLOR_SIN Calculate sin(x) using Taylor series
% input:
% x     -   function argument
% err   -   precision (diff between real sin and computed)
% output:
% S     -   function value, given x
% i     -   number of terms need for summing

% error is 0 compared to mod(x, 2 *pi)
x = mod(x/pi, 2) * pi;

i = 0;

x_p = x;
sign = 1;
fact = 1;

t =  sign * x_p / fact;

S = 0;

while abs(t) > err
    S = S + t;
    
    i = i + 1;
    
    x_p = x_p * x * x;
    fact = fact * (2*i) * (2*i+1);
    sign = sign * -1;
    
    t = sign * x_p / fact;
    
end

end