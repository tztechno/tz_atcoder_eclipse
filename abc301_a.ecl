:- set_flag(debug_compile, off).
% :- pragma(nodebug).
% :- pragma(nowarings).

:- set_stream(log_output, stderr).
:- set_stream(waring_output, stderr).


main :-
        read_num(N),
        Goal is (N + 2 - 1) // 2,
        read_str(S),
        string_chars(S, Cs),
        find_ans(Cs, Goal, Ans),
        write(Ans),
        nl.

find_ans(Cs, Goal, Result) :-
        find_ans(Cs, Goal, 0, 0, Result).
find_ans(_, Goal, Goal, _, "T").
find_ans(_, Goal, _, Goal, "A").
find_ans(['T'|T], Goal, Takahashi, Aoki, Result) :-
        NewTakahashi is Takahashi + 1,
        find_ans(T, Goal, NewTakahashi, Aoki, Result).
find_ans(['A'|T], Goal, Takahashi, Aoki, Result) :-
        NewAoki is Aoki + 1,
        find_ans(T, Goal, Takahashi, NewAoki, Result).

read_str(S) :-
        read_string(user_input, " \n", "", _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).
