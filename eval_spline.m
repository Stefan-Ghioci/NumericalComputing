function z = eval_spline(x, a, b, c, d, t)
%EVAL_SPLINE Compute spline value
% input:
% t         - evaluation points 
% x         - nodes
% a,b,c,d   - coefficients
% output:
% z         -   values

n=length(x);

x=x(:); 
t=t(:);

k = ones(size(t));

for j=2:n-1
    k(x(j) <= t) = j;
end

s = t - x(k);
z = d(k) + s.*(c(k) + s.*(b(k) + s.*a(k)));
