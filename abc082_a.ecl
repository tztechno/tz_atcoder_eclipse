abc082_a.ecl
##########################################
##########################################
##########################################
##########################################
##########################################
:- set_flag(debug_compile, off).
% :- pragma(nodebug).
% :- pragma(nowarings).

:- set_stream(log_output, stderr).
:- set_stream(waring_output, stderr).

main :-
        read_num(A),
        read_num(B),
        Ans is ((A+B+1) div 2),
        write(Ans),
        nl.

read_str(S) :-
        read_string(user_input, " \n", "", _, S).

read_num(N) :-
	read_str(S),
	number_string(N, S).
##########################################
[python]
import math
a,b=map(int,input().split())
print(math.ceil((a+b)/2))
##########################################
