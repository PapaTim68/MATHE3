%% Figure 1
hold on
figure(1)
f1 = @(x,y) sqrt(x.^2+y.^2)
fsurf(f1)
x = @(t)t
y = @(t)1
z = @(t)f1(x(t),1)
fplot3(x,y,z,'linewidth',2,'color','w')
%% Figure 2
figure(2)
hold on
fsurf(f1)
x = @(t)t.*cos(t);
y = @(t)t.*sin(t);
z = @(t)f1(x(t),y(t));
fplot3(x,y,z,'linewidth',2,'color','w')
%% Höhenlinie
figure(3)
hold on 
fsurf(f1)
z0 = 2;
fc = fimplicit(@(x,y) f1(x,y)-z0,'visible','off');
x = get(fc,'xData');
y = get(fc,'yData');
plot3(x,y,f1(x,y),'linewidth',2,'color','w')
