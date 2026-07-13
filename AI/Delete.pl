% Delete an element from a list

delete_element(X, [X|T], T).

delete_element(X, [H|T], [H|R]) :-
    delete_element(X, T, R).

% ?- delete_element(3, [1,2,3,4,5], L).
% ?- delete_element(a, [b,c,d], L).
% ?- delete_element(5, [5], L).