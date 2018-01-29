
clear;
clc;

load('zipcodeData2014');
%% 
% Zipcodes 
% Note: First entry being the zipcode of interest, and the following being
% the neighboring zipcodes.

zipcodes = [19977, 19734, 19938, 19904, 19901];

data = table2array(zipcodeData2014);

%%
% Locating and storing the data for the specified zipcodes 
% Stored in 6 X 5 matrix ? tax brackets by zipcode: storing indices
zipcodeIndices = zeros(6,5);

for column = 1:1:5
    zipcodeIndex = find(data(:,1) == zipcodes(column));
    zipcodeIndices(:,column) = zipcodeIndex; 
end

%%
% Storing total incomes per bracket along with the sum (absolute total) for
% each zipcode.
% 
% Note: Total Incomes stored at index 7 within "data" matrix

totalIncomes = zeros(1,5);
totalIncomesPerBracket = zeros(6,5);

for column = 1:1:5
    totalIncome = 0;    
    for row = 1:1:6
        rowPosition = zipcodeIndices(row,column);        
        income = data(rowPosition,7);
        totalIncomesPerBracket(row, column) = income;         
        totalIncome = totalIncome + income;        
    end    
    totalIncomes(1,column) = totalIncome;
end
% calculate mean
meanVal = mean(totalIncomes);

%%
% Graph the total incomes for each zipcode: histogram

clf;
figure(1)
c = categorical(zipcodes);
bar(c,totalIncomes);
title('Total Income vs. Zipcode')
xlabel('zipcodes');
ylabel('total income');

%%
% For each zipcode, graph the total incomes per tax bracket: histogram

YMIN = 0;
YMAX= 250e3;

figure('rend','painters','pos',[10 10 900 600])
c = categorical(1:1:6);

subplot(2,3,1)      
bar(c,totalIncomesPerBracket(:,1))
title('19977')
xlabel('tax bracket');
ylabel('total income');
ylim([YMIN YMAX])

subplot(2,3,2)       
bar(c,totalIncomesPerBracket(:,2))
title('19734')
xlabel('tax bracket');
ylabel('total income');
ylim([YMIN YMAX])

subplot(2,3,3)       
bar(c,totalIncomesPerBracket(:,3))
title('19938')
xlabel('tax bracket');
ylabel('total income');
ylim([YMIN YMAX])

subplot(2,3,4)       
bar(c,totalIncomesPerBracket(:,4))
title('19904')
xlabel('tax bracket');
ylabel('total income');
ylim([YMIN YMAX])

subplot(2,3,5)       
bar(c,totalIncomesPerBracket(:,5))
title('19901')
xlabel('tax bracket');
ylabel('total income');
ylim([YMIN YMAX])

disp('done');

