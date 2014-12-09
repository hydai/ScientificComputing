function output = Q2( data )
a = data(:,1);
b = data(:,2);
c = data(:,3);
d = data(:,4);
d = -d;
x = (a.^2+b.^2+c.^2).^(1/2);
A = [a./x b./x c./x];
B = [d./x];
output = A\B;
end
