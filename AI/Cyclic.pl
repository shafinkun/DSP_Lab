% Edges of the graph
edge(a, b).
edge(b, c).
edge(c, d).
edge(d, a).
edge(c, e).

% Direct path
path(X, Y) :-
    edge(X, Y).

% Indirect path
path(X, Y) :-
    edge(X, Z),
    path(Z, Y).

% path(a, d).
% path(e, a).

