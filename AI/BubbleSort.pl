% Bubble Sort

bubble_sort(List, Sorted) :-
    swap(List, Temp),
    !,
    bubble_sort(Temp, Sorted).

bubble_sort(Sorted, Sorted).

% Swap adjacent elements if they are out of order
swap([X, Y | Rest], [Y, X | Rest]) :-
    X > Y.

swap([Z | Rest], [Z | Rest1]) :-
    swap(Rest, Rest1).

% bubble_sort([5, 2, 8, 1], A).