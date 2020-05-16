function test_plot_hermite()

disp('Plotting sin function and Hermite interpolated polynomial, given X=[-5,0,5]')

syms f(x);
f(x) = sin(x);
plot_hermite(f)

end