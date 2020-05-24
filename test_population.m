function test_population()

disp("Approximating USA population model with 3rd degree poly")

y = [75.995 91.972 105.710 123.200 131.670 150.700 179.320 203.210 226.510 249.630 281.420 308.790]';
t = (1900:10:2010)';
n=length(t);

mu=mean(t); s=std(t);
tn=(t-mu)/s;
A=[tn.^3, tn.^2, tn, ones(n,1)];
c=A\y;

tg=1895:2025;
tgn=(tg-mu)/s;
yg=polyval(c,tgn);

plot(t,y,'o', tg, yg); hold on

w=[1975:2010];
wn=(w-mu)/s;
pe=polyval(c,wn);
plot(w,pe,'-');

Y=log(y);
A=[t, ones(n,1)];
c=A\Y;
lambda=c(1);    
K=exp(c(2));
tg=1895:2025;
yg=K*exp(lambda * tg);
plot(t,y,'o', tg,yg);   hold on

ye= K*exp(lambda*[1975:2010]);
plot([1975:2010], ye, '--');

legend("Census","3dp Model", "Exp Model")

end