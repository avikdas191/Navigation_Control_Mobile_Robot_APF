% plotting a circle in 2d given the coordinates of its centre x and

% the radius r and desirable number n
% of points on the circle boundary
function circleBlue(x,y,r,n)
theta = linspace(0, 2*pi,n);
x1 = x + r*sin(theta);
y1 = y + r*cos(theta);
plot(x,y, 'o', 'MarkerFaceColor', 'w', 'Markersize', 6), hold on
plot(x1,y1, 'b-','LineWidth',5)
h=fill(x1,y1,'b');
axis equal

