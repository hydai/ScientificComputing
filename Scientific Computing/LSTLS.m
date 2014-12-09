addpath utility/
addpath machineLearning/

load dataset4lineFit.txt
x = dataset4lineFit(:, 1);
y = dataset4lineFit(:, 2);
hold on;
plot(x, y, 'ro');

X = [x ones(size(x))];
Y = [y];
coef = X\Y;

plot(x, X*coef);

[data, eighVec, eighVal] = pca([x y]');

mx = mean(x);
my = mean(y);
c = -(eighVec(1, end)*mx+eighVec(2, end)*my);
plot(x, -eighVec(1, end)/eighVec(2, end)*(x)-c/eighVec(2, end), 'g-');