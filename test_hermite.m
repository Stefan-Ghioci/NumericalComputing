function test_hermite()
disp('Approximating f(x)=e^x, given nodes x = [0,1,2] using Hermite interpolation')

syms S(x);
S(x) = hermite([0,1,2], [exp(0), exp(1),exp(2)], [exp(0), exp(1),exp(2)]);

disp('Polynomial:')
disp(S(x))

disp('Approximated e^0.25')
disp(vpa(S(0.25)))

disp('Real e^0.25:')
disp(vpa(exp(0.25)))

disp('Error:')
disp(vpa(abs(exp(0.25)) - S(0.25)))

end