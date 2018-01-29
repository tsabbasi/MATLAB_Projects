numTrials = 100;
pSuccess_original = .005;
pSuccess2 = .1;
pSuccess3 = .2;
pSuccess4 = .5;
pSuccess5 = .9;

XMIN = 0;
XMAX = numTrials;
YMIN = 0;
YMAX= 1;

x = 0: 1: numTrials;

experiment_1 = geo_mass_probability(pSuccess_original,numTrials);
experiment_2 = geo_mass_probability(pSuccess2,numTrials);
experiment_3 = geo_mass_probability(pSuccess3,numTrials);
experiment_4 = geo_mass_probability(pSuccess4,numTrials);
experiment_5 = geo_mass_probability(pSuccess5,numTrials);

clf;
figure(1);
plot(x,experiment1);
hold on;

plot(x,experiment2);
hold on;

plot(x,experiment3);
hold on;

plot(x,experiment4);
hold on;

plot(x,experiment5);
hold on;

axis([XMIN XMAX YMIN YMAX]);
grid on;