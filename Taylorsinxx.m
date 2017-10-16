%% Taylor Reihe
%  von sin(x)/x bei x0 = 0
%% Vorbereitung
clear all
clc
close all
clf
syms f(x)
f(x) = sin(x)./x;
f0 = @(x) sin(x)./x
x0 = pi/2;

%% Ableitung
f1 = @(x) cos(x)./x - sin(x)./x.^2
f2 = @(x) (2.*sin(x))./x.^3 - sin(x)./x - (2.*cos(x))./x.^2

%% Taylor-Approximation, Glieder bis n=2
tfun = @(x) f0(x);
tfun1 = @(x) tfun(x) + f1(x0).*(x-x0);
tfun2 = @(x) tfun1(x) + f2(x0)./2.*(x-x0).^2;
tmath = taylor(f,x,x0);

%% Plot
range = [-5+x0,5-x0];
fplot(f0,range,'*','LineWidth' , 2);
hold on
fplot(tfun,range);
fplot(tfun1,range);
fplot(tfun2,range);
fplot(tmath,range,'--');
plot(x0,f0(x0),'o');
grid();
legend('f0 = sin(x)/x','Taylor 01','Taylor 02', 'Taylor 03','Taylor Mathlab')