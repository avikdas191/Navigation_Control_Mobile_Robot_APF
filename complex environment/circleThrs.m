%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Circle-Thistle3 Code %%%%%
%%%%%  Avik Das - 33034339  %%%%%
%%% Edited from code provided %%%
%%% by Dr. Lyuba Alboul 2023  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function circleThrs(x,y,r,n)
theta = linspace(0, 2*pi,n);
x1 = x + r*sin(theta);
y1 = y + r*cos(theta);
plot(x,y, 'o', 'MarkerFaceColor', '#CDB5CD', 'Markersize', 6), hold on
plot(x1,y1, 'b-')
color=[0.8008 0.707 0.8008];
h=fill(x1,y1,color);
axis equal