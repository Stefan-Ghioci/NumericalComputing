function test_hermite()

disp("Gauss-Hermite integral approximation")

syms f1(x);
syms f2(x);
f1(x) = exp(-x^2)*sin(x)
disp("Real Value")
disp(0)

for N=[5 10 100]
    [nodes, weights] = GaussHermite(N);
    disp( N + " truncation points ")
    
    disp("Approx value (=error)")
    disp(vpa(eval_quad(nodes,weights,f1)))
end

f2(x) = exp(-x^2)*cos(x)
disp("Real Value")
real2 = 1.380388447043143;
disp(real2)

for N=[5 10 100]
    [nodes, weights] = GaussHermite(N);
    disp( N + " truncation points ")
    
    disp("Approx value")
    disp(vpa(eval_quad(nodes,weights,f2)))
    disp("Error")
    disp(vpa(eval_quad(nodes,weights,f2))-real2)
end
end