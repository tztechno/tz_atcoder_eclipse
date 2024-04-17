

:- set_flag(debug_compile, off).
% :- pragma(nodebug).
% :- pragma(nowarings).

:- set_stream(log_output, stderr).
:- set_stream(waring_output, stderr).

read_str(S) :-
    read_string(user_input, " \n", "", _, S).

read_num(N) :-
    read_str(S),
    number_string(N, S).

main :-
    read_num(A),
    read_num(B),
    (   A mod B =:= 0
    ->  Ans = "YES"
    ;   Ans = "NO"
    ),
    write(Ans),
    nl,
    halt.
