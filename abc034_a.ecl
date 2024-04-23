
main :-
    read_num(A),
    read_num(B),
    
    (   A < B ->
        write("Better")
    ;   write("Worse")
    ),
    nl.

read_str(S) :-
    read_string(user_input, " \n", "", _, S).

read_num(N) :-
    read_str(S),
    number_string(N, S).
