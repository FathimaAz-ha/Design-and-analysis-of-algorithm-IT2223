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
title('Simple Tree with 3 levels')

% Call DFS from node 1 (A)
dfsTree(G, 1);

% --- DFS Function ---
function dfsTree(graph, start)
    n = numnodes(graph);
    visited = zeros(1, n);
    adj = adjacency(graph);  % Get adjacency matrix
    disp('DFS Traversal:');
    dfsUtil(start, adj, visited);
end

function dfsUtil(node, adj, visited)
    visited(node) = 1;
    fprintf('%d ', node);  % Print node index
    for i = 1:length(visited)
        if adj(node, i) && ~visited(i)
            dfsUtil(i, adj, visited);
        end
    end
end
