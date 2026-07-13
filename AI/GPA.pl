gpa(Mark, 4.00) :-
    Mark >= 80.

gpa(Mark, 3.75) :-
    Mark >= 75,
    Mark < 80.

gpa(Mark, 3.50) :-
    Mark >= 70,
    Mark < 75.

gpa(Mark, 3.25) :-
    Mark >= 65,
    Mark < 70.

gpa(Mark, 3.00) :-
    Mark >= 60,
    Mark < 65.

gpa(Mark, 2.75) :-
    Mark >= 55,
    Mark < 60.

gpa(Mark, 2.50) :-
    Mark >= 50,
    Mark < 55.

gpa(Mark, 2.25) :-
    Mark >= 45,
    Mark < 50.

gpa(Mark, 2.00) :-
    Mark >= 40,
    Mark < 45.

gpa(Mark, 0.00) :-
    Mark < 40.