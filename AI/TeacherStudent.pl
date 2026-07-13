% Professors teach courses
teaches(dr_mahbubun_nahar, ai).
teaches(dr_mahbubun_nahar, algorithms).
teaches(dr_smith, database).

% Students study courses
studies(nobin, ai).
studies(babu, ai).
studies(shafin, algorithms).
studies(dipu, database).

% Rule: A professor teaches a student if they teach the student's course
teaches_student(Professor, Student) :-
    teaches(Professor, Course),
    studies(Student, Course).

% ?- teaches_student(dr_mahbubun_nahar, Student).
% ?- teaches_student(Professor, nobin).
% ?- teaches_student(dr_smith, Student).
% ?- teaches_student(dr_mahbubun_nahar, babu).
% ?- teaches(dr_mahbubun_nahar, Course).
% ?- studies(Student, ai).
% ?- teaches(Professor, ai).