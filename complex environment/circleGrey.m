%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Circle-Grey Code %%%%%%%%
%%%%%  Avik Das - 33034339  %%%%%
%%% Edited from code provided %%%
%%% by Dr. Lyuba Alboul 2023  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function circleGrey(x,y,r,n)
theta = linspace(0, 2*pi,n);
x1 = x + r*sin(theta);
y1 = y + r*cos(theta);
plot(x,y, 'o', 'MarkerFaceColor', '#8F8F8F', 'Markersize', 6), hold on
plot(x1,y1, 'k-', LineWidth=1.5)
color=[0.5586 0.5586 0.5586];
h=fill(x1,y1,color);
axis equal