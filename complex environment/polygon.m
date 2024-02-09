%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% circleGreen2 Code %%%%%%%
%%%  Alex Littler - 20035222  %%%
%%% Edited from code provided %%%
%%% by Dr. Lyuba Alboul 2014  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function polygon(x,y,r,n,c,l)
%c - colour of a polyogon, l - colour of the boundary
% n- number on the bounday, will be (n-1) as the first point and the 
% last one coincide to close the boundat 
theta = linspace(pi/4, (2*pi +pi/4),n);
x1 = x + r*cos(theta);
y1 = y + r*sin(theta);
%plot(x,y, 'o', 'MarkerFaceColor', 'w', 'Markersize', 6), hold on
%the statement above is commented, as it is for visualisation of the centre
%of the square
plot(x1,y1,l,'LineWidth', 10), hold on
h=fill(x1,y1,c, 'EdgeColor', 'none');
axis equal
