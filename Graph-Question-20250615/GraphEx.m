clear all; clc;

% Step 1: Define the source and destination arrays
src = [1, 1, 2, 3, 4];
dst = [2, 3, 4, 4, 5];

% Step 2: Create a graph (avoid using variable names like 'graph')
G1 = graph(src, dst);

% Step 3: Draw the graph
figure;
plot(G1);
title('Simple Graph');

% Step 4: Subgraph of nodes 1, 2, 3
subG = subgraph(G1, [1, 2, 3]);
figure;
plot(subG);
title('Subgraph with Nodes 1, 2, 3');

% Step 5: Show neighbors (adjacent vertices) for each node
disp('Adjacent Vertices:');
n = numnodes(G1);
for k = 1:n
    neighborsList = neighbors(G1, k);
    fprintf('Node %d is connected to: %s\n', k, mat2str(neighborsList'));
end

% Step 6: Label edges
figure;
p = plot(G1);
p.EdgeLabel = strcat(string(src), "→", string(dst));
title('Graph with Edge Labels');

% Step 7: Label the nodes
figure;
p2 = plot(G1);
labelnode(p2, 1:numnodes(G1), string(1:numnodes(G1)));
title('Graph with Node Labels');

% Step 8: Shortest path from node 1 to 5
[path, d] = shortestpath(G1, 1, 5);
fprintf('\nShortest path from 1 to 5: %s\n', mat2str(path));
fprintf('Distance: %d\n', d);

% Highlight the shortest path
figure;
p3 = plot(G1);
highlight(p3, path, 'EdgeColor', 'r', 'LineWidth', 2);
title('Shortest Path from Node 1 to 5');
