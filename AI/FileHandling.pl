% Write data to a file
write_file :-
    open('student.txt', write, Stream),
    write(Stream, 'Hello, Prolog!'),
    close(Stream).

% Read data from a file
read_file :-
    open('student.txt', read, Stream),
    read_line_to_string(Stream, Data),
    writeln(Data),
    close(Stream).

% write_file.
% read_file.