function poly2lagrange_test()

disp("Approximation using function values for Lagrange interpolation")

disp("Function")

syms f(x);
f(x) = exp(x^2 -1)

disp("Nodes")

X = [1,1.1,1.2,1.3,1.4]

disp("Interpolated polynomial in point 1.25")

approx_value = vpa(poly2lagrange(5,f, 1.25,X))

disp("Real value")

real_value = vpa(f(1.25))

disp("Error")

err = abs(approx_value - real_value)

end