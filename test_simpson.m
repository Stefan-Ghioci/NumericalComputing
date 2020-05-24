function test_simpson()
format long;
disp("Approx. integral of sqrt(1+x^2) on [-1;1] interval")

real = 2.295587149392638;
disp("Real value:")
disp(real)

syms f(x);
f(x) = sqrt(1+x^2);

for n=[5 10 100]
    
    disp("Simpson formula with " + n + " nodes:" )
    disp(vpa(simpson(f,-1,1,n)))
    disp("Error:")
    disp(vpa(simpson(f,-1,1,n) - real)) 
end

end