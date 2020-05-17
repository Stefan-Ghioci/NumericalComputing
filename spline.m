function [a, b, c, d] = spline(X, Y, type, DY)
%SPLINE Compute coefficients for spline interpolated function
% input:
% X         -   nodes
% Y         -   values 
% type      -   0=complete
%               1=second derivative reproduction
%               2=natural
%               3=deBoor
% DY        -   (optional) values of derivatives (2nd order for type 1)
% output:
% a,b,c,d   -   coefficients of spline

if (nargin<4) || (type==2) 
    DY=[0,0]; 
end

n=length(X);

if any(diff(X)<0)
    [X,ind]=sort(X); 
else
    ind=1:n; 
end

y=Y(ind); 
X=X(:);
y=y(:);
dx=diff(X); 
ddiv=diff(y)./dx;

ds=dx(1:end-1);
dd=dx(2:end);
dp=2*(ds+dd);
md=3*(dd.*ddiv(1:end-1)+ds.*ddiv(2:end));


switch type
case 0
    dp1=1; 
    dpn=1;
    vd1=0;
    vdn=0;
    
    md1=DY(1); 
    mdn=DY(2);
    
case {1,2}
    dp1=2; 
    dpn=2;
    vd1=1;
    vdn=1;
    
    md1=3*ddiv(1)-0.5*dx(1)*DY(1);
    mdn=3*ddiv(end)+0.5*dx(end)*DY(2);
    
case 3
    x31=X(3)-X(1);
    xn=X(n)-X(n-2);
    
    dp1=dx(2); 
    dpn=dx(end-1);
    vd1=x31;
    vdn=xn;
    
    md1=((dx(1)+2*x31)*dx(2)*ddiv(1)+dx(1)^2*ddiv(2))/x31;
    mdn=(dx(end)^2*ddiv(end-1)+(2*xn+dx(end))*dx(end-1)*ddiv(end))/xn;
end

dp=[dp1;dp;dpn];
dp1=[0;vd1;dd];
dm1=[ds;vdn;0];
md=[md1;md;mdn];

A=spdiags([dm1,dp,dp1],-1:1,n,n);
m=A\md;

d=y(1:end-1);
c=m(1:end-1);
a=(m(2:end)+m(1:end-1)-2*ddiv)./(dx.^2);
b=(ddiv-m(1:end-1))./dx-dx.*a;

