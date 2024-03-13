###########################################
###########################################
###########################################
###########################################
//abc318_a
:- pragma(nodebug).
:- pragma(nowarings).

:- set_stream(log_output, stderr).
:- set_stream(waring_output, stderr).

main :-
        read_num(N),
        read_num(M),
        read_num(P),
        ( N < M ->
            Ans = 0
        ;
            Ans is ((N - M) // P) + 1
        ),
        write(Ans),
        nl.

read_str(S) :-
        read_string(user_input, " \n", "", _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).

###########################################
//abc317_a
:- pragma(nodebug).
:- pragma(nowarings).

:- set_stream(log_output, stderr).
:- set_stream(waring_output, stderr).

main :-
        read_num(N),
        read_num(H),
        read_num(X),
        read_n_list_one_line(N, Ps),
        NeedHP is X - H,
        find_ans(1, NeedHP, Ps, Ans),
        write(Ans),
        nl.

find_ans(Index, NeedHP, [H|T], Index) :-
        NeedHP =< H.
find_ans(Index, NeedHP, [H|T], Result) :-
        NewIndex is Index + 1,
        find_ans(NewIndex, NeedHP, T, Result).
        

read_str(S) :-
        read_string(user_input, " \n", "", _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).

read_n_list_one_line(N, L) :-
        read_n_list_one_line_aux(N, [], L).
read_n_list_one_line_aux(0, L, Reversed) :-
        reverse(L, Reversed).
read_n_list_one_line_aux(N, Acc, L) :-
        read_num(E),
        NewN is N - 1,
        read_n_list_one_line_aux(NewN, [E|Acc], L).

###########################################
//abc315_a

:- pragma(nodebug).
:- pragma(nowarings).

:- set_stream(log_output, stderr).
:- set_stream(waring_output, stderr).

main :-
        read_str(S),
        string_chars(S, Cs),
        print_without_vowel(Cs),
        nl.

read_str(S) :-
        read_string(user_input, " \n", "", _, S).

print_without_vowel([]).
print_without_vowel([H|T]) :-
        member(H, ['a', 'e', 'i', 'o', 'u']),
        !,
        print_without_vowel(T).
print_without_vowel([H|T]) :-
        write(H),
        print_without_vowel(T).

###########################################

main : 
    read_string(user_input, " \n", "", _, S),
    write(S).

###########################################
        
main :-
    X = 5,
    write(X),  % 5
    Y = X * 2, 
    write(Y),  % X * 2
    A is X * 2,
    write(A).  % 10      

###########################################






