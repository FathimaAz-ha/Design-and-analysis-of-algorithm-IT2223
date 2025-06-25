%example input
weights = [10, 20, 30];
values  = [60, 100, 120];
capacity= 50;

%call the knapsack functions
maxProfit = knapsack01(weights, values, capacity);

%display result
fprintf('Maximum profit (0/1 Knapsack :%.2f\n', maxProfit);

%-----------------------
%function : 0/1 Knapsack DP Solution 
%-----------------------

function maxProfit = knapsack01(weights, values, capacity)
n = length(weights);

%initoialize DP table : (n+1) X (capacity+1)
dp = zeros(n+1, capacity+1);

%fill the table by row
for i = 1 : n
    for w = 0 : capacity
        if weights(i)<= w

            %option 1 : Include the item
            include = dp(i,w-weights(i) + 1)+  values(i);

            %option 2 : exclude the item
            exclude = dp(i, w+1);
            dp(i+1, w+1) = max(include, exclude);
        else
            dp(i+1, w+1) = dp(i, w+1);
        end
    end
end

%thne result is in the bottom right cell
maxProfit = dp(n+1, capacity+1);
end
