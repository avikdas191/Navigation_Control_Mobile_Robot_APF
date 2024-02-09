%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% circle Code %%%%%%%%%%
%%%%%% Avik Das - 33034339  %%%%%
%%% Edited from code provided %%%
%%% by Dr. Lyuba Alboul 2023  %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% plotting a circle in 2d given the coordinates of its centre x and y

% the radius r and desirable number n
% of points on the circle boundary
function circle(x,y,r,n,c,l)
% l and c are colours
theta = linspace(0, 2*pi,n);
x1 = x + r*sin(theta);
y1 = y + r*cos(theta);
plot(x,y, 'o', 'MarkerFaceColor', c, 'Markersize', 6), hold on
plot(x1,y1, l)
h=fill(x1,y1,c);
axis equal
