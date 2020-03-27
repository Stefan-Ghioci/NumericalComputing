function test_vandermonde_cond()

disp("t(k) = -1 + k * 2/n")
for n=10:15
    v = zeros(1,n);
    for k=1:n
        v(k) = -1 + k * 2/n;
    end
    V = vander(v);
    c = cond(V, "inf");
    
    disp("cond(vander(n="+ n + ")) = " + c)
end

disp("t(k) = 1/k")

for n=10:15
    v = zeros(1,n);
    for k=1:n
        v(k) = 1/k;
    end
    V = vander(v);
    c = cond(V, "inf");
    
    disp("cond(vander(n="+ n + ")) = " + c)
end

end