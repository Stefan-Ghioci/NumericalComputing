function test_romberg()
format long;
disp("Approx. integral of sqrt(1+x^2) on [-1;1] interval")

real = 2.295587149392638;
disp("Real value:")
disp(real)

syms f(x);
f(x) = sqrt(1+x^2);

for n=[1 2 3 4]
    
    disp("Romberg formula with 10^-" + n + " error" )
    tic
    romberg(f,-1,1,10^-n, 100);
    toc
end

end