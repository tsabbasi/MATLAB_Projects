function pmf = marketBasketStick(numTrials)

outcomes = zeros(1,numTrials);

for i=1:numTrials
    % item picked     
    outcomes(i) = randi(10);
end

pmf = zeros(2,max(outcomes));
pmf(1,:) = 1:max(outcomes);

for i=1:max(outcomes)
    pmf(2, i) = sum(outcomes==i)/numTrials;    
end

end

