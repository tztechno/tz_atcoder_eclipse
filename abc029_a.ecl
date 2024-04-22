

:- set_flag(debug_compile, off).
% :- pragma(nodebug).
% :- pragma(nowarings).

:- set_stream(log_output, stderr).
:- set_stream(waring_output, stderr).

read_str(S) :-
    read_string(user_input, " \n", "", _, S).
    
main :-
    read_str(S),
    write(S),
    write("s"),
    nl.
