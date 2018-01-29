function pmf = poisDist(lambda, numTrials)

outcomes = poissrnd(lambda, 1, numTrials);

pmf = zeros(2,max(outcomes) + 1);
pmf(1,:) = 0:max(outcomes);

for i=0:max(outcomes)
    pmf(2, i+1) = sum(outcomes==i)/numTrials;    
end

end

