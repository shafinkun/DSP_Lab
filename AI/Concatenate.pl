% Concatenate two lists

concatenate([], L, L).

concatenate([H|T], L, [H|R]) :-
    concatenate(T, L, R).

% concatenate([1,2,3], [3,4,5], L).