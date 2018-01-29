java_developers = 10000000;
jdc_certified_developers = 50000;
%  calculate the probability of success, p given constraints
p = jdc_certified_developers/java_developers;

num_trials = 500;
num_experiments = 1;

budget = 500000;
expense_per_interview = 5000;

interviews_limit = budget/expense_per_interview;

N = 10;
avg_people_interviewed = zeros(1, N);

for i=1:N
    % generate geometric distribution 
    result = geornd(p, num_experiments, num_trials);
    % include the kth term, which represents a success
    result = result + 1;
    result_given_budget = result(result <= interviews_limit);
    avg_people_interviewed(i) = mean(result_given_budget); 
end

% Better representation of result from Question 3 which asked:
% Find avg people we can afford given budget
avg_people = round(mean(avg_people_interviewed));
fprintf("Average number of people interviewed GIVEN budget: \n%f\n\n", avg_people);
initial_avg_cost = round(avg_people * expense_per_interview);
fprintf("Initial avg cost of avg people GIVEN budget: \n%f\n\n", initial_avg_cost);

% Question 4 : find cheaper avg cost given budget 
% Proposal ?> interview more than 1 person per interview
people_per_interview = 5;
new_cost_per_interview = expense_per_interview / people_per_interview;
cheaper_avg_cost = round(avg_people * new_cost_per_interview);
fprintf("Cheaper avg cost of avg people GIVEN budget: \n%f\n\n", cheaper_avg_cost);

% the different in initial and cheaper cost is our new budget
% with this budget we can calculate how many more people we can interview
% for the same amount of money
money_remaining = round(initial_avg_cost - cheaper_avg_cost);
fprintf("Money saved with new cost with same number of people: \n%f\n\n", money_remaining);
additional_people_interviewed = money_remaining / new_cost_per_interview;
fprintf("Total people we can interview for the same amount as the inital avg cost: \n%f\n\n", additional_people_interviewed);


total_people_interviewed = additional_people_interviewed + avg_people;