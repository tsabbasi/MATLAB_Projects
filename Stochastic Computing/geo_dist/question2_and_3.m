
java_developers = 10000000;
jdc_certified_developers = 50000;
%  calculate the probability of success, p given constraints
p = jdc_certified_developers/java_developers;

num_trials = 500;
num_experiments = 1;

% generate geometric distribution 
result = geornd(p, num_experiments, num_trials);
% include the kth term, which represents a success
result = result + 1;

% question 2: compute avg # people interviewed to find candidate
avg_people_interviewed = mean(result);
fprintf("Average number of people interviewed with INFINITE budget: \n%f\n\n", avg_people_interviewed);

% question 3: GIVEN budget, compute avg # people interviewed to find candidate
budget = 500000;
expense_per_interview = 5000;
% interviews we can afford GIVEN budget
interviews_limit = budget/expense_per_interview;
% filter out values in result less than 100 which represents 100 interviews
result_given_budget = result(result <= interviews_limit);
avg_interviewed_given_budget = mean(result_given_budget);

fprintf("Average number of people interviewed GIVEN budget: \n%f\n", avg_interviewed_given_budget);
    






