function X = gauss_elim(A)
%%GAUS_ELIM Gauss Elimination (with partial pivoting) algorithm for solving equation-system
% input:
% A     -   equation-system associated augmented matrix
% output:
% X     -   solution vector

sz = size(A);
n = sz(1);

for i=1:n-1
    p = i;
    a_pi = A(p,i);
    
    for j=i:n
        if A(j,i) > a_pi && A(j,i) ~= 0
            p = j;
            a_pi = A(j,i);
        end
    end
    
    if a_pi == 0
        error('There is no unique solution');
    end
    
    if p ~= i
        temp = A(i,:);
        A(i,:) = A(p,:);
        A(p,:) = temp;
    end
    
    for j=i+1:n
        m = A(j,i) / A(i,i);
        A(j,:) = A(j,:) - m * A(i,:);
    end
end

if A(n,n) == 0
    error('There is no unique solution');
end

X = zeros(n,1);

X(n,1) = A(n,n+1) / A(n,n); 

for i=n-1:-1:1
    s = 0;
    for j=i+1:n
        s = s + A(i,j) * X(j,1);
    end
    X(i,1) = (A(i,n+1) - s) / A(i,i);
end

end