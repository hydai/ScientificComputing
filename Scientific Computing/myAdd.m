% ===================================
% Program name: myAdd.m
% Author: hydai
% Update time: 9/22
% Function description:
%   Input parameter: a, b
%       a, b can be a voctor or a matrix
%   Return value: a voctor or a matrix
% ===================================
function ret = myAdd(a, b)
    sizeA = size(a);
    sizeB = size(b);
    maxRow = max(sizeA(1), sizeB(1));
    maxCol = max(sizeA(2), sizeB(2));
    i = sizeA(1)+1;
    while i <= maxRow
        a(i,:) = 0;
        i = i+1;
    end
    i = sizeB(1)+1;
    while i <= maxRow
        b(i,:) = 0;
        i = i+1;
    end
    i = sizeA(2)+1;
    while i <= maxCol
        a(:,i) = 0;
        i = i+1;
    end
    i = sizeB(2)+1;
    while i <= maxCol
        b(:,i) = 0;
        i = i+1;
    end
    ret = a+b;
end