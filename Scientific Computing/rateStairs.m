% ===================================
% Program name: rateStairs.m
% Author: hydai
% Update time: 9/22
% Function description:
% ===================================

function ret = YearRate(input)
    PresentValue = 1000;
    AnnualInterest = 0.2;
    ret = PresentValue*((1+AnnualInterest)^input);
end
function ret = QuarRate(input)
    PresentValue = 1000;
    AnnualInterest = 0.2;
    ret = PresentValue*((1+AnnualInterest/4)^input);
end
function ret = MonthRate(input)
    PresentValue = 1000;
    AnnualInterest = 0.2;
    ret = PresentValue*((1+AnnualInterest/12)^input);
end
function ret = ContRate(input)
    PresentValue = 1000;
    AnnualInterest = 0.2;
    ret = PresentValue*exp(AnnualInterest*input);
end

function ret = rateStairs()
    YearRateRange = linspace(0,10,10);
    QuarterRateRange = linspace(0,10,40);
    MonthRateRange = linspace(0,10,120);
    ContinueRateRange = linspace(0,10,10000);
    figure
    stairs(YearRateRange, YearRate(YearRateRange));
    stairs(QuarterRateRange, QuarRate(QuarterRateRange));
    stairs(MonthRateRange, MonthRate(MonthRateRange));
    stairs(ContinueRateRange, ContRate(ContinueRateRange));
    ret = 0;
end