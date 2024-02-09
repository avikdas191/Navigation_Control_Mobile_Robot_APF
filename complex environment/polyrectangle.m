function polyrectangle(x1,x2,y1,y2,deg)

polyin = polyshape([x1 x1 x2 x2],[y1 y2 y2 y1]);
% polyin = polyshape([0 0 1 1],[1 0 0 1]);
poly1 = rotate(polyin,deg);
% poly2 = rotate(polyin,deg,[1 0]);

h=polybuffer(poly1,1.5);
% DDA0DD
plot(h, FaceColor='#CDB5CD', FaceAlpha=1, LineWidth=1);
axis equal
hold on