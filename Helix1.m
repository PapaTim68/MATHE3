function []= Helix1(s0,r0,s,rotflag,cir)
% Visualiziert eine Helix
% s0        3x1-Array Mittelachsenkoordinatenstartpunkt
% r0        3x1-Array Startpunkt der Helix ausgehend von der Mittelachse
% s         double Steigung
% rotflag   math. pos. Drehsinn, wenn rotflag = 0
% cir       double Umdrehungs Anzahl
% Pap,10/2017

%% Defaults
if nargin == 0
   s0 = [2;2;2]
   r0 = [2;2;0]
   s = 1;
   rotflag = 0;
   cir = 5;
end
if rotflag == 0
    p = 1
else
    p = -1
end

phi = verktorWinkel([1;0],[r0(1);r0(2)]);
c = s;
r = sqrt(r0(1)^2 +r0(2)^2);

%% Zylinderkoordinaten
x = @(t) r.*cos(p*2*pi*t+phi)+s0(1);
y = @(t) r.*sin(p*2*pi*t+phi)+s0(2);
z = @(t) c*t + r0(3)+ s0(3); 
        
figure(1);
fplot3(x,y,z,[0,cir]);
pause(1)

xlabel('x')
ylabel('y')
zlabel('z')

end

function phi = verktorWinkel(a,b)
% a,b 2x1-Vektorengröße
    phi = atan2(det([a,b]),dot(a,b));
end

