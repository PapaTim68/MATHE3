%% Fourie für Rechtecksignal
clear all
close all
clc
syms x n
a = 2./(pi.*n).*sin(pi./2.*pi)
a0 = 1
fc = cos(n.*x)
% f1 = @(x) a0./2 + a(1) * fc(1,x)
% f2 = @(x) f1(x) + a(2) * fc(2,x)
% f3 = @(x) f2(x) + a(3) * fc(3,x)
% f = @(x) a0./2
elements(1) =  a0./2
for k = 1:5
elements(k+1) = a(k) * fc(k)
end
f = sum(elements)
x = linspace(-pi,2*pi,10);
plot(x,f(x))

