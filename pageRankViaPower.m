function pageRank = pageRankViaPower(A)
X = [];
for i = 1:(size(A,1))
    X(i) = 1/size(A,1);
end
X = X';
while (true) 
    TX = A*X;
    flag = 0;
    for i = 1:size(X)
        if (abs(TX(i)-X(i)) > eps)
            flag = 1;
        end
    end
    if (flag == 0)
        break
    end
    X = TX;
end
pageRank = X;
end