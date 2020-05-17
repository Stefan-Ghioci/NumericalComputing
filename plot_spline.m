function plot_spline()

x = 0.1:2:10.1;
y = sin(x);
xx = 0.1:.025:10.1;

[a1,b1,c1,d1]=spline(x,y,0,[cos(0.1),y,cos(10.1)]);
[a2,b2,c2,d2]=spline(x,y,1,[-sin(0.1),y,-sin(10.1)]);
[a3,b3,c3,d3]=spline(x,y,2);
[a4,b4,c4,d4]=spline(x,y,3);

yy1=eval_spline(x,a1,b1,c1,d1,xx);
yy2=eval_spline(x,a2,b2,c2,d2,xx);
yy3=eval_spline(x,a3,b3,c3,d3,xx);
yy4=eval_spline(x,a4,b4,c4,d4,xx);

hh=plot(x,y,'o',xx,sin(xx),'-',xx,yy1,'--',xx,yy2,'-.', xx,yy3,':', xx,yy4,'-');
set(hh(2),'MarkerSize',4)
axis([-0.5,10.5,-1.3,1.3])
legend('nodes','sin','complete','2nd derivative', 'natural','deBoor','Location','Southwest')

end