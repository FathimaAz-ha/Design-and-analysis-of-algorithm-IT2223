% Distance matrix (symmetric)
% Example with 4 cities
D = [ 0  10 15 20;
     10   0 35 25;
     15  35  0 30;
     20  25 30  0 ];

n = size(D, 1);                  % Number of cities
cities = 2:n;                   % Exclude starting city (city 1)
allPerms = perms(cities);      % All permutations of cities 2 to n
minCost = inf;                 % Set initial minimum cost to infinity
bestPath = [];

% Loop over all permutations
for i = 1:size(allPerms, 1)
    path = [1 allPerms(i,:) 1];  % Start and end at city 1
    cost = 0;
    
    % Calculate cost of this path
    for j = 1:n
        cost = cost + D(path(j), path(j+1));
    end
    
    % Update if this path is better
    if cost < minCost
        minCost = cost;
        bestPath = path;
    end
end

% Display results
fprintf('Minimum Cost: %d\n', minCost);
fprintf('Best Path: ');
disp(bestPath);
