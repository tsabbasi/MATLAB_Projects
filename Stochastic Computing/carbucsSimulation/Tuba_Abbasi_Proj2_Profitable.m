%% Task 5 & 6
% Days of the month
Jan = 31;
Feb = 28;
Mar = 31;
Apr = 30;
May = 31;
Jun = 30;
Jul = 31;
Aug = 31;
Sep = 30;
Oct = 31;
Nov = 30;
Dec = 31;

[rev1, exp1, prof1, netProf1] = calculateOptimizedProfit(Jan);
[rev2, exp2, prof2, netProf2] = calculateOptimizedProfit(Feb);
[rev3, exp3, prof3, netProf3] = calculateOptimizedProfit(Mar);
[rev4, exp4, prof4, netProf4] = calculateOptimizedProfit(Apr);
[rev5, exp5, prof5, netProf5] = calculateOptimizedProfit(May);
[rev6, exp6, prof6, netProf6] = calculateOptimizedProfit(Jun);
[rev7, exp7, prof7, netProf7] = calculateOptimizedProfit(Jul);
[rev8, exp8, prof8, netProf8] = calculateOptimizedProfit(Aug);
[rev9, exp9, prof9, netProf9] = calculateOptimizedProfit(Sep);
[rev10, exp10, prof10, netProf10] = calculateOptimizedProfit(Oct);
[rev11, exp11, prof11, netProf11] = calculateOptimizedProfit(Nov);
[rev12, exp12, prof12, netProf12] = calculateOptimizedProfit(Dec);

revQ1 = rev1 + rev2 + rev3;
revQ2 = rev4 + rev5 + rev6;
revQ3 = rev7 + rev8 + rev9;
revQ4 = rev10 + rev11 + rev12;

expQ1 = exp1 + exp2 + exp3;
expQ2 = exp4 + exp5 + exp6;
expQ3 = exp7 + exp8 + exp9;
expQ4 = exp10 + exp11 + exp12;

profQ1 = prof1 + prof2 + prof3;
profQ2 = prof4 + prof5 + prof6;
profQ3 = prof7 + prof8 + prof9;
profQ4 = prof10 + prof11 + prof12;

netProfQ1 = netProf1 + netProf2 + netProf3;
netProfQ2 = netProf4 + netProf5 + netProf6;
netProfQ3 = netProf7 + netProf8 + netProf9;
netProfQ4 = netProf10 + netProf11 + netProf12;

annualRev = revQ1 + revQ2 + revQ3 + revQ4;
annualExp = expQ1 + expQ2 + expQ3 + expQ4;
annualProf = profQ1 + profQ2 + profQ3 + profQ4;
annualNetProf = netProfQ1 + netProfQ2 + netProfQ3 + netProfQ4;

disp("CARBUCS OPTIMIZED FINANCES");
disp("----------------------");
disp("Quarter 1");
disp("Total Revenue: $" + num2str(revQ1,'%.2f'));
disp("Total Profit: $" + num2str(netProfQ1,'%.2f'));
disp("Profit Margin: " + num2str((netProfQ1/revQ1 * 100), '%.2f') + '% or ' + num2str(round(netProfQ1/revQ1 * 100),'%.2f') + '%');
disp("Quarter 2");
disp("Total Revenue: $" + num2str(revQ2,'%.2f'));
disp("Total Profit: $" + num2str(netProfQ2,'%.2f'));
disp("Profit Margin: " + num2str((netProfQ2/revQ2 * 100), '%.2f') + '% or ' + num2str(round(netProfQ2/revQ2 * 100),'%.2f') + '%');
disp("Quarter 3");
disp("Total Revenue: $" + num2str(revQ3,'%.2f'));
disp("Total Profit: $" + num2str(netProfQ3,'%.2f'));
disp("Profit Margin: " + num2str((netProfQ3/revQ3 * 100), '%.2f') + '% or ' + num2str(round(netProfQ3/revQ3 * 100),'%.2f') + '%');
disp("Quarter 4");
disp("Total Revenue: $" + num2str(revQ4,'%.2f'));
disp("Total Profit: $" + num2str(netProfQ4,'%.2f'));
disp("Profit Margin: " + num2str((netProfQ4/revQ4 * 100), '%.2f') + '% or ' + num2str(round(netProfQ4/revQ4 * 100),'%.2f') + '%');
disp("----------------------");
disp("Annual");
disp("Total Revenue: $" + num2str(annualRev,'%.2f'));
disp("Total Profit: $" + num2str(annualNetProf,'%.2f'));
disp("Profit Margin: " + num2str((annualNetProf/annualRev * 100), '%.2f') + '% or ' + num2str(round(annualNetProf/annualRev * 100),'%.2f') + '%');