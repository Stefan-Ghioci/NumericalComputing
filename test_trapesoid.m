function test_trapesoid()
format long;
disp("Approx. integral of sin(x) on [-1;1] interval")

real = 0;
disp("Real value:")
disp(real)

syms f(x);
f(x) = sin(x);

for n=[10 100 500 1000]
    disp("Trapesoid formula with " + n + " nodes:" )
    disp(vpa(trapesoid(f,0,1,n)))
end

end