function [mu, sigma] = Q3_101062124(X)
mu = (mean(X'))';
sum = 0;
for i = 1 : size(X, 2)
    sum = sum + (X(:, i)-mu)*((X(:, i)-mu)');
end
sigma = sum / size(X, 2);
end
