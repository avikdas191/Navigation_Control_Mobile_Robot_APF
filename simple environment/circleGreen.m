function circleGreen(x,y,r,n)
theta = linspace(0, 2*pi,n);
x1 = x + r*sin(theta);
y1 = y + r*cos(theta);
plot(x,y, 'o', 'MarkerFaceColor', 'w', 'Markersize', 6), hold on
plot(x1,y1, 'b-')
h=fill(x1,y1,'g');
axis equal
