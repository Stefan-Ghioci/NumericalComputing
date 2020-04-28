function lagrange_test()

disp("Approximating f(x)=(x+1)^2 given points x={1,2,3}")

X = [1 2 3];
Y = [4 9 16];

disp("f(5) = " + lagrange(5, X, Y))
disp("f(20) = " + lagrange(20, X, Y))


disp("Approximating US population with Lagrange interpolation")

year = [1900 1910 1920 1930 1940 1950 1960 1970 1980 1990 2000 2010];
population = [75995 91972 105711 123203 131669 150697 179323 203212 226505 249633 281422 308786];

disp("Population in 1975: " + lagrange(1975, year, population))
disp("Population in 2018: " + lagrange(2018, year, population))

end