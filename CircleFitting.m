load circleData.txt
x=circleData(:,1);
y=circleData(:,2);
c = x;
c(:) = 1;
a = [2*x 2*y c];
b = x.^2 + y.^2;
theta = a\b
r = sqrt(theta(3)+theta(1)^2+theta(2)^2)
ttt = linspace(0, 2*pi);
rx = theta(1) + r*cos(ttt);
ry = theta(2) + r*sin(ttt);

lambda0 = [theta(1) theta(2) r];
lambda = fminsearch(@errorMeasure, lambda0, [], circleData)
rrx = lambda(1) + lambda(3)*cos(ttt)
rry = lambda(2) + lambda(3)*sin(ttt)

    
hold on
plot(rx, ry, 'r');
plot(rrx, rry, 'b');
plot(x, y, '.');
axis image
hold off