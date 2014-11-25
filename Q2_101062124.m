function output=Q2_101062124(cashFlowVec, x0, cashFlow, compounding)

    if nargin == 1
        x0 = 0;
        cashFlow = 12;
        compounding = 'month';
    elseif nargin == 2
        cashFlow = 12;
        compounding = 'month';
    elseif nargin == 3
        compounding = 'month';
    end

    if strcmp(compounding, 'year') && cashFlow ~= 12
        output = nan;
    else
        output = fzero(@npvCompute, x0);
    end

    function npv=npvCompute(x)
        n=length(cashFlowVec);
        if strcmp(compounding, 'year')
            npv=sum(cashFlowVec./((1+x).^(0:n-1))); % Yearly compounding
        elseif cashFlow == 12
            npv=sum(cashFlowVec./((1+x/12).^((0:n-1)*12))); % Month compounding
        elseif cashFlow == 6
            npv=sum(cashFlowVec./((1+x/12).^((0:n-1)*6))); % Half yearly compounding
        elseif cashFlow == 3
            npv=sum(cashFlowVec./((1+x/12).^((0:n-1)*3))); % Quarter compounding
        elseif cashFlow == 1
            npv=sum(cashFlowVec./((1+x/12).^(0:n-1))); % Yearly compounding
        end
    end
end