%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% circleGreen2 Code %%%%%%%
%%%%%  Avik Das - 33034339  %%%%%
%%% Edited from code provided %%%
%%% by Dr. Lyuba Alboul 2023  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function square(x,y,r,n,c,l)
%c - colour of a circle, l - colour if the boundary
theta = linspace(pi/4, (2*pi +pi/4),n);
x1 = x + r*sin(theta);
y1 = y + r*cos(theta);
plot(x,y, 'o', 'MarkerFaceColor', 'w', 'Markersize', 6), hold on
plot(x1,y1,l)
h=fill(x1,y1,c, 'EdgeColor', 'k');
axis equal
hold on
