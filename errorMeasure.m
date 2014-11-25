function [ sqEr ] = errorMeasure(lambda, data)
    x = data(:,1);
    y = data(:,2);
    sqEr = sum((sqrt((lambda(1)-x).^2+(lambda(2)-y).^2) - lambda(3)).^2);
end