[X, Y, Z] = peaks;
[x, y, z] = peaks;
figure(1);
colormap(cool);

mesh(X, Y, Z);
tmpFigure1 = getframe(gcf);
figure(2);
colormap(hot);
mesh(x, y, z);
tmpFigure2 = getframe(gcf);
close all;

figure(3);
subplot(1, 2, 1);
imshow(tmpFigure1.cdata);
title('colormap = cool');

subplot(1, 2, 2);
imshow(tmpFigure2.cdata);
title('colormap = hot');
