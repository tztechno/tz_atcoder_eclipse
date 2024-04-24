

main :-
    read_num(R),
    
    (   R < 1200 ->
        write("ABC")
    ;   write("ARC")
    ),
    nl.

read_str(S) :-
    read_string(user_input, " \n", "", _, S).

read_num(N) :-
    read_str(S),
    number_string(N, S).
