:- pragma(nodebug).
:- pragma(nowarings).

:- set_stream(log_output, stderr).
:- set_stream(waring_output, stderr).

main :-
        N is 100,
        Ans is (N*(N+1)//2),
        write(Ans),
        nl.

read_str(S) :-
        read_string(user_input, " \n", "", _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).
