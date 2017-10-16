%%1a
f = @(x) min(2,1./x.^2);
figure(1)
fplot(f,[-4,4])
%%1b1
z = @(x,y) min(2,1./(x.^2+y.^2))
figure(2)
fsurf(z,[-4,4])
%%1b2
% r = 4
% z = @(phi) min(2,1./((4*cos(phi)).^2+(-4*sin(phi)).^2))
% figure(3)
% fsurf(z,[0,2*pi])
