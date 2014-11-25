t=0:0.1:4*pi;
y=sin(t)+rand(1, length(t));
plot(t, y, '.-');
hold on
% Draw peaks points
[pks,locs] = findpeaks(y);
plot(t(locs),pks, 'mo');
% Text on image
tmp = size(pks);
for int=1:tmp(2)
    text(t(locs(int)), pks(int), ['  <- (', num2str(t(locs(int))), ', ', num2str(pks(int)), ')']);
end
hold off