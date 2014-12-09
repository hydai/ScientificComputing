function coef = lineFitViaLse( x, y )
theda = ([x ones(size(x))])\y;
coef = theda';
end

