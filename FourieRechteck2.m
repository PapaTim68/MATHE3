clear all
clc
close all
nm = 100;
np = linspace(2,nm,10);
T = 2*pi;
w = 2*pi/T;
p = 2;
%% Rechteck Funtkion
f = @(t) 1*(mod(t+T/(2*p),T)<T/p);
fplot(f,'linewidth', 2)
hold on
%% Fourie
a0 = (2/T)*integral(f,0,T);
a = zeros(nm,1); b = zeros(nm,1);
for k = 1:nm
    a(k) = (2/T) * integral(@(t) f(t).*cos(k*w*t),0,T);
    b(k) = (2/T) * integral(@(t) f(t).*sin(k*w*t),0,T);
end
f = @(t) a0/2 + a(1)*cos(1*w*t)+b(1)*sin(1*w*t);
for k1 = 2:nm
    f = @(t) f(t) + a(k1)*cos(k1*w*t)+b(k1)*sin(k1*w*t);
%     if ismember(k1,np)
%         fplot(f)
%     end
end
% fplot(@(t) a(n)*cos(n*w*t)+b(n)*sin(n*w*t))
fp = fplot(f)
y = get(fp, 'YData');