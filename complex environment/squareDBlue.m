%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Square-Deep Blue Code %%%%%%
%%%%%  Avik Das - 33034339  %%%%%
%%% Edited from code provided %%%
%%% by Dr. Lyuba Alboul 2023  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function squareDBlue(x,y,r,n)
theta = linspace(pi/4, (2*pi +pi/4),n);
x1 = x + r*sin(theta);
y1 = y + r*cos(theta);
plot(x,y, 'o', 'MarkerFaceColor', '#0072BD', 'Markersize', 6), hold on
plot(x1,y1, 'k-', LineWidth=1.5)
color=[0 0.4470 0.7410];
h=fill(x1,y1,color);
axis equal
hold on