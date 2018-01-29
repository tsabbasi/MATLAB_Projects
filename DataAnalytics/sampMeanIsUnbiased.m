% % % 
% population of ages
% % 

POP_SIZE = 100000;
NUM_BINS = 20;
population = randi([4,96], 1, POP_SIZE);

popMean = mean(population);

SAMPLE_SIZE = 10;

NUM_TRIALS = 5000;

sampleMeans = zeros(1, NUM_TRIALS);

for t = 1:1:NUM_TRIALS
    sampIndex = randi([1 POP_SIZE], 1, SAMPLE_SIZE);
    
    mySample = population(sampIndex);
    
    total = sum(mySample);
    sampleMean = total/SAMPLE_SIZE;
    
    sampleMeans(1, t) = sampleMean;
end

expOfSampleMean = sum(sampleMeans)/NUM_TRIALS;

trialNums = 1:1:NUM_TRIALS;

clf;
figure(1);
plot(trialNums, sampleMeans);
xlabel('trial num');
ylabel('sampleMean');
title('trial vs. sample Mean');
hold on;

popMeans = zeros(1, NUM_TRIALS);
popMeans = popMeans + popMean;
plot(trialNums, popMeans, 'r');
ylim([0 100]);

expSampleMeans = zeros(1, NUM_TRIALS);
expSampleMeans = expSampleMeans + expOfSampleMean;
plot(trialNums, expSampleMeans, 'y');

figure(2)
hist(sampleMeans, NUM_BINS);
xlim([0 100]);

disp('done');