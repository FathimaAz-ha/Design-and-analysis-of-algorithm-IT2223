s = [1 2]; %start nodes
t = [2 3]; %end nodes
G = graph(s, t); %create a graph object 
%plot(G); %plot the graph
title('Graph'); %add title

E = graph([1 2], [2 3]); %edges : 1 -2 
%plot(E)
title('Undirected Graph')

F = digraph([1 2], [2 3]); %edges : 1 -2 
%plot(F)
title('directed Graph')



