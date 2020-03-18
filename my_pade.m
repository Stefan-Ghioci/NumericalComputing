function R = my_pade(f,m,k)
%MY_PADE Rational Padé function approximation
% input:
% f     - input function
% m     - numerator term count
% k     - denominator term count
% output:
% R     - rational approximated function

C1 = zeros(k,k);
C2 = zeros(k,1);

for i=1:k
    for j=1:k
        p = m + i - j;
        
        c = 0;
        if p>=0
            df = matlabFunction(diff(f,p));
            c = df(0) / factorial(p);
        end
        
        C1(i,j) = c;
    end
end

for i=1:k
    p = m + i;
    
    df = matlabFunction(diff(f,p));
    c = df(0) / factorial(p);
    
    C2(i,1) = c;
end

B = C1 \ C2;
B = [1 rot90(B)];

A = zeros(1,m+1);

for j=0:m
    s = 0;
    
    for l=0:j
        p = j - l;
        
        df = matlabFunction(diff(f,p));
        c = df(0) / factorial(p);
        
        b = 0;
        
        if l <= k
            b = B(l+1);
        end
        
        s = s + c * b;
    end
    
    A(1,j+1) = s;
end

A = rot90(A,2);
B = rot90(B,2);

syms x;

R(x) = poly2sym(A) / poly2sym(B);

end