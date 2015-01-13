function [pr, iterCount] = Q2_101062124(A)
X = [];
for i = 1:(size(A,1))
    X(i) = 1/size(A,1);
end
X = X';
iterCount = 0;
while (true) 
    TX = A*X;
    flag = 0;
    for i = 1:size(X)
        if (abs(TX(i)-X(i)) > eps)
            flag = 1;
        end
    end
    iterCount = iterCount + 1;
    if (flag == 0)
        break
    end
    X = TX;
end
pr = X;
end
