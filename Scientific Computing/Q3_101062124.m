function output = Q3_101062124( data )
x = data(1, :)';
y = data(2, :)';
z = data(3, :)';
[tta, eighVec, eighVal] = pca([x y z]');
mx = mean(x);
my = mean(y);
mz = mean(z);
c = -(eighVec(1, end)*mx+eighVec(2, end)*my+eighVec(3, end)*mz);
output = [eighVec(1, end) eighVec(2, end) eighVec(3, end) c]';
end
