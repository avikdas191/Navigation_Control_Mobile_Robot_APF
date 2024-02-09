%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Square-LemonChiffon3 Code %%%
%%%%%  Avik Das - 33034339  %%%%%
%%% Edited from code provided %%%
%%% by Dr. Lyuba Alboul 2023  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function squareLC3(x,y,r,n)
theta = linspace(pi/4, (2*pi +pi/4),n);
x1 = x + r*sin(theta);
y1 = y + r*cos(theta);
plot(x,y, 'o', 'MarkerFaceColor', '#CDC9A5', 'Markersize', 6), hold on
plot(x1,y1, 'k-', LineWidth=1.5)
color=[0.8008 0.7852 0.6445];
h=fill(x1,y1,color);
axis equal
hold on