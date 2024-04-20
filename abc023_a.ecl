abc023_a.ecl
############################
############################
############################
############################
############################
:- set_flag(debug_compile, off).
% :- pragma(nodebug).
% :- pragma(nowarnings).

:- set_stream(log_output, stderr).
:- set_stream(warning_output, stderr).

read_str(S) :-
    read_string(user_input, " \n", "", _, S).

read_num(N) :-
    read_str(S),
    number_string(N, S).

main :-
    read_num(A),
    Ans is (A//10) + (A mod 10),
    write(Ans),
    nl,
    halt.
############################
