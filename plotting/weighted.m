s = [1 2 2];       % Start nodes
t = [2 3 4];       % End nodes
weights = [10 5 7];

G = graph(s, t, weights);
plot(G, 'EdgeLabel', G.Edges.Weight)  
title('Weighted Undirected Graph')

