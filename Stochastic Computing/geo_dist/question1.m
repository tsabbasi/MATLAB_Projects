
numTrials = 10;
p = [.1, .3, .5, .9];

XMIN = 0;
XMAX = numTrials;
YMIN = 0;
YMAX= 1;

clf;
figure(1);
for index=1:numel(p)
    for i=1:1:numTrials
        probability_mass_function = 0;
        pFailure = power((1 - p(index)), i-1);
        probability_mass_function = pFailure * p(index);

        
        switch(index)
            case 1
                plot(i, probability_mass_function, '+r');
                hold on;

            case 2
                plot(i, probability_mass_function, '+b');
                hold on;

            case 3
                plot(i, probability_mass_function, '+g');
                hold on;

            case 4
                plot(i, probability_mass_function, '+y');
                hold on;
        end
        grid on;

    end
end
axis([XMIN XMAX YMIN YMAX]);