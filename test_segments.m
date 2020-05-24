function test_segments()

disp("Approximating 3 segments length based on different measurements")

disp("Segments used for each measurement")
A = [ 1 1 1;  1 1 0; 0 1 1; 1 0 0; 0 0 1]

disp("Measurements")
b = [89 67 53 35 20]'

disp("Approx. value of each segment")
x = A\b


end