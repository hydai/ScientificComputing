addpath utility/
MoneyNeedToLoan = 400;
LoanYearRate = 3/100;
SavingYearRate = 1.38/100;
TotalYear = 20;
HouseInitValue = 500;
HouseIncreaseRate = 7/100;
PA_Monthly_payment = loan(MoneyNeedToLoan, LoanYearRate, TotalYear)

PB_Final_value_of_the_house = HouseInitValue*(1+HouseIncreaseRate/12)^(TotalYear*12)
PB_Final_value_of_the_payment = saving(PA_Monthly_payment, SavingYearRate, TotalYear)
PB_Final_value_of_the_down_payment = 100*(1+SavingYearRate/12)^(TotalYear*12)
PB_Final_earning = PB_Final_value_of_the_house - PB_Final_value_of_the_down_payment - PB_Final_value_of_the_payment

PC_Initial_earning = PB_Final_earning / ((1+SavingYearRate/12)^(TotalYear*12))

PD_rent = saving(PA_Monthly_payment - 1, SavingYearRate, TotalYear);
PD_Final_earning_with_rent = PB_Final_value_of_the_house - PD_rent - PB_Final_value_of_the_down_payment
PD_Initial_earning = PD_Final_earning_with_rent / ((1+SavingYearRate/12)^(TotalYear*12))