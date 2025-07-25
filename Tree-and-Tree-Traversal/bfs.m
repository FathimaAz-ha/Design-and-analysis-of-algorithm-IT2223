nodes = {'A','B','C','D','E','F','G'};

% define edges using source and target nodes
s = [1 1 2 2 3 3];
t = [2 3 4 5 6 7];

% define edge weights
weights = [5 3 2 4 6 1];

% create a directed graph
G = digraph(s,t,weights, nodes);

% plot the graph
figure;
plot(G, 'Layout','layered', 'Direction', 'down','EdgeLabel', G.Edges.Weight);
title('Simple Tree with 3 levels');

% Run BFS
bfsTree(G, 1);

% --- BFS FUNCTION ---
function bfsTree(graph, start)
    n = numnodes(graph);           % number of nodes
    adj = adjacency(graph);        % get adjacency matrix
    visited = zeros(1, n);
    queue = [start];
    visited(start) = 1;

    disp('BFS Traversal:');
    while ~isempty(queue)
        node = queue(1);
        queue(1) = [];  % dequeue
        fprintf('%d ', node);  % or use node names

        for i = 1:n
            if adj(node, i) && ~visited(i)
                queue(end+1) = i;  % enqueue
                visited(i) = 1;
            end
        end
    end
    fprintf('\n');
end
