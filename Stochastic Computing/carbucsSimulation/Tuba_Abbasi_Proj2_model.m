function [totalRevenue, totalExpenses, initialProfit, netProfit] = calculateProfit(days)

clc;
rates_given = [5 15 15 10 8 3 15 10 5 2 5 3 1 15 10 3];

shift1_avg = mean(rates_given(1:4));
shift2_avg = mean(rates_given(5:8));
shift3_avg = mean(rates_given(9:12));
shift4_avg = mean(rates_given(13:16));

% task 1: keeping the time unit to be per minute for each average
% considering expected value of possion distribution is lambda,
% only shift 3 has a lambda <= to 6, we will have half the staff 
% for that duration.

%% task 2: employee cost $10 per hour 
% shift 1
salary = 10;
salary_per_shift = salary * 4;
shift1_staff = 20;
shift2_staff = 20;
shift3_staff = 10;
shift4_staff = 20;

labor_cost_per_day = (shift1_staff * salary_per_shift) + (shift2_staff * salary_per_shift) + ...
    (shift3_staff * salary_per_shift) + (shift4_staff * salary_per_shift);

%% task 3: module of observation is 1 hour
% poission distribution sampling implemented in fuction poisDist.m which
% returns the pmf given lambda ?> cust per min
% each trial represents a minute passed

trials = 60 * days;

hour_1 = poisDist(rates_given(1,1), trials);
hour_2 = poisDist(rates_given(1,2), trials);
hour_3 = poisDist(rates_given(1,3), trials);
hour_4 = poisDist(rates_given(1,4), trials);
hour_5 = poisDist(rates_given(1,5), trials);
hour_6 = poisDist(rates_given(1,6), trials);
hour_7 = poisDist(rates_given(1,7), trials);
hour_8 = poisDist(rates_given(1,8), trials);
hour_9 = poisDist(rates_given(1,9), trials);
hour_10 = poisDist(rates_given(1,10), trials);
hour_11 = poisDist(rates_given(1,11), trials);
hour_12 = poisDist(rates_given(1,12), trials);
hour_13 = poisDist(rates_given(1,13), trials);
hour_14 = poisDist(rates_given(1,14), trials);
hour_15 = poisDist(rates_given(1,15), trials);
hour_16 = poisDist(rates_given(1,16), trials);




%% task 4: in our sample space we have 10 items
% 3 additional items are for the probability of item combos
% number of total customers is derived from the pmfs computed above
% omega = ["hot_coffee", "sandwich", "cold_coffee", "pastry", "car_wash", "car_wax", "gas", "sandwich_&_cold_coffee", 
%   "pastry_&_hot_coffee", "wash_&_wax"];
% probabilites below are in order w/respect to omega, omega is not actually being used

probabilities = [0.6, 0.125, 0.4, 0.15, 0.2, 0.125, 0.45, (0.125 * 2 * 0.4),...
    (0.15 * 2 * 0.6), (0.125 * 4 * 0.2)];

sumExpectedVals = sum(hour_1(1, :) .* hour_1(2, :))+ ...
    sum(hour_2(1, :).* hour_2(2, :))+ ...
    sum(hour_3(1, :).* hour_3(2, :))+ ...
    sum(hour_4(1, :).* hour_4(2, :))+ ...
    sum(hour_5(1, :).* hour_5(2, :))+ ...
    sum(hour_6(1, :).* hour_6(2, :))+ ...
    sum(hour_7(1, :).* hour_7(2, :))+ ...
    sum(hour_8(1, :).* hour_8(2, :))+ ...
    sum(hour_9(1, :).* hour_9(2, :))+ ...
    sum(hour_10(1, :).* hour_10(2, :))+ ...
    sum(hour_11(1, :).* hour_11(2, :))+ ...
    sum(hour_12(1, :).* hour_12(2, :))+ ...
    sum(hour_13(1, :).* hour_13(2, :))+ ...
    sum(hour_14(1, :).* hour_14(2, :))+ ...
    sum(hour_15(1, :).* hour_15(2, :))+ ...
    sum(hour_16(1, :).* hour_16(2, :));

expectedCust = round(sumExpectedVals * trials);


stickPmf = marketBasketStick(expectedCust);

marketBasketProb = stickPmf(2,:) .* probabilities;

revenue = [3.00, 5.50, 3.50, 3.00, 4.00, 4.00, 10.00, 9.00, 6.00, 8.00];
n = revenue .* marketBasketProb;

% total rev per cust 
revPerCust = sum(n);  

% total rev = revenue per customer times # of customer
totalRevenue = expectedCust * revPerCust;

material_cost = [1.50, 1.25, 1.50, 1.00, 3.00, 0.50, 8.00, 2.75, 2.50, 3.50];
%  material cost per cust
n =  material_cost .* marketBasketProb;
expensePerCust = sum(n);
totalExpenses = expectedCust * expensePerCust;

% profit per cust: rev - expense (before labor costs)
initialProfit = totalRevenue - totalExpenses;

total_labor = labor_cost_per_day * days;

netProfit = initialProfit - total_labor;

profitPercentage = netProfit/totalRevenue;
% fprintf("\nOverall Net Profit is %.2f%% or %.0f%%", profitPercentage*100, round(profitPercentage*100));

revPerDays = totalRevenue/days;
netProfitPerDays = netProfit/days;
profitPerDaysPercentage = netProfitPerDays/revPerDays;
% fprintf("Net Profit Per Day is %.2f%% or %.0f%%", profitPerDaysPercentage*100, round(profitPerDaysPercentage*100));

end

