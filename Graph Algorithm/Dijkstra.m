% Define the weighted adjacency matrix
adjMatrix = [
    0 2 0 1 0;
    2 0 4 3 0;
    0 4 0 0 6;
    1 3 0 0 5;
    0 0 6 5 0;
];

% Create and plot the graph
G = graph(adjMatrix);
figure;
plot(G, 'Layout', 'force', 'EdgeLabel', G.Edges.Weight);
title("Weighted Adjacency Matrix");

% Replace 0s with Inf (except diagonal)
n = size(adjMatrix, 1);
for i = 1:n
    for j = 1:n
        if i ~= j && adjMatrix(i, j) == 0
            adjMatrix(i, j) = Inf;
        end
    end
end

% Dijkstra’s Algorithm
startNode = 1;
visited = false(1, n);
distance = Inf(1, n);
distance(startNode) = 0;

for i = 1:n
    minDist = Inf;
    u = -1;
    for j = 1:n
        if ~visited(j) && distance(j) < minDist
            minDist = distance(j);
            u = j;
        end 
    end

    if u == -1  % No valid node left to process
        break;
    end

    visited(u) = true;

    for v = 1:n
        if ~visited(v) && adjMatrix(u, v) ~= Inf
            if distance(u) + adjMatrix(u, v) < distance(v)
                distance(v) = distance(u) + adjMatrix(u, v);
            end
        end
    end
end

% Display the results
fprintf('Shortest Distance from Source Node (%d):\n', startNode);
for i = 1:n
    fprintf('Vertex %d: %d\n', i, distance(i));
end
