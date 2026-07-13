% Insert an element into a list

insert_element(X, L, [X|L]).

% ?- insert_element(5, [1,2,3,4], L).
% ?- insert_element(apple, [banana, mango], L).