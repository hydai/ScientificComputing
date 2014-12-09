function output = Q4_101062124( A )
sz = size(A);
sz(2) = 1;
co = {};
m = [];
for i = 1:sz(1)
    co{i} = A(i,:);
    m(i) = mean(co{i});
end
m = m';
output=fminsearch(@(x) dist2points(x, A), m);

end

function sum = dist2points(x, A)
sum = 0;
for i = 1:size(A,2)
    sum = sum + norm(x-A(:, i));
end
end
