function lagrange_test()

disp("Approximating f(x)=(x+1)^2 given points x={1,2,3}")

X = [1 2 3];
Y = [4 9 16];

syms f(x);

f(x) = lagrange(X,Y)

disp("Simplified")

f(x) = simplify(f(x))

disp("Approximating US population with Lagrange interpolation")

year = [1900 1910 1920 1930 1940 1950 1960 1970 1980 1990 2000 2010];
population = [75995 91972 105711 123203 131669 150697 179323 203212 226505 249633 281422 308786];

f(x) = lagrange(year, population)

disp("Simplified")

f(x) = simplify(f(x))


disp("Population in 1975: ")
vpa(f(1975))

disp("Population in 2018: ")
vpa(f(2018))

end