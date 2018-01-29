

POP_SIZE = 10;
population = randi([17 22], 1, POP_SIZE);

sampleMean = sum(population)/POP_SIZE;

outlier = 86;

newSampleMean = (sum(population) + outlier)/(POP_SIZE + 1);

disp('done');