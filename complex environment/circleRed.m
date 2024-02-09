%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Circle-Red Code %%%%%%%%%
%%%%%  Avik Das - 33034339  %%%%%
%%% Edited from code provided %%%
%%% by Dr. Lyuba Alboul 2023  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function circleRed(x,y,r,n)
theta = linspace(0, 2*pi,n);
x1 = x + r*sin(theta);
y1 = y + r*cos(theta);
plot(x,y, 'o', 'MarkerFaceColor', '#D95319', 'Markersize', 6), hold on
plot(x1,y1, 'k-', LineWidth=1.5)
color=[0.8500 0.3250 0.0980];
h=fill(x1,y1,color);
axis equal
