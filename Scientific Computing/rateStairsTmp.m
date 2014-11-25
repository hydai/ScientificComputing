function rateStairsTmp()
    PresentValue = 1000;
    AnnualInterest = 0.2;
    YearRateRange = linspace(0,10,10);
    QuarterRateRange = linspace(0,10,40);
    MonthRateRange = linspace(0,10,120);
    ContinueRateRange = linspace(0,10,10000);
    X = [YearRateRange, QuarterRateRange, MonthRateRange, ContinueRateRange];
    Y = [PresentValue*((1+AnnualInterest).^YearRateRange), PresentValue*((1+AnnualInterest/4).^(QuarterRateRange*4)), PresentValue*((1+AnnualInterest/12).^(MonthRateRange*12)), PresentValue*exp(AnnualInterest*ContinueRateRange)];
    stairs(X, Y);
end