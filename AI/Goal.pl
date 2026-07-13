likes(rahim, mango).
likes(karim, banana).
student(shafin).

satisfy_goals([]).

satisfy_goals([Goal|Rest]) :-
    call(Goal),
    satisfy_goals(Rest).

% satisfy_goals([likes(rahim, mango)]).
% satisfy_goals([likes(rahim, mango), student(shafin)]).
