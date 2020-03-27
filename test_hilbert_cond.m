function test_hilbert_cond()

warning('off','all')

for n=10:15
    
    H = hilb(n);
    HI = inv(H);
    
    normH = norm(H,2);
    normHI = norm(HI,2);
    
    cond = normH * normHI;
    
    disp("cond(hilb(n=" + n + ")) = "+cond);
end
end