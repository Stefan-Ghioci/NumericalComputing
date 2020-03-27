function test_hilbert_cond()

warning('off','all')

for n=10:15
    H = hilb(n);
    c = cond(H,2);
    disp("cond(hilb(n=" + n + ")) = "+ c);
end
end