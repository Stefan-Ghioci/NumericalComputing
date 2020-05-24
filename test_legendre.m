function test_gauss()

disp("Approximating integral of sin(x^2) on [-1;1] interval")

syms f(x);
f(x) = sin(x^2);

disp("Matlab 'quad' method")


a=-1;
b=1;

mq = quad(f,a,b);

disp(vpa(mq));


for N=[5 10 15]
    disp("Legendre-Gauss approximation with "+ N + " truncation points")
    [nodes, weights] = GaussLegendre(N);
    I = eval_quad(nodes, weights, f);
    
    disp(vpa(I))
    
    disp("Error")
    disp(vpa(I-mq))
end
end