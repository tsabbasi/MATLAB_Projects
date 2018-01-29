NUM_BINS = 20;
NUM_SAMPLES = 1000;
MU = 10;
SIGMA_SQ = 200;
SIGMA = sqrt(SIGMA_SQ);

clf;
figure(1);
subplot(1,2,1);
hist(Xnorm, NUM_BINS);
hold on;
plot(MU, 0, 'r^');
subplot(1,2,2);
shiftMean = mean(Xnorm);
Xshift = Xnorm - shiftMean;
stdDev = std(Xshift);
Xz = Xshift/stdDev;
hist(Xz, NUM_BINS);
hold on;
newMean = mean(Xshift);
plot(newMean, 0, 'r^');

LAMDA = 3;

NUM_TRIALS = 1000;
SAMPLES = 100;
theMeas = zeros(1, NUM_TRIALS);
for t=1:1:NUM_TRIALS
    
    Xpoiss = poissrnd(LAMBDA, 1, NUM_SAMPLES);
    meas = sum(Xpoiss)/SAMPLES;
    theMeas(1,t) = meas;
end
figure(2);
hist(theMeas);
figure(3);
hist(Xpoiss, NUM_BINS);



