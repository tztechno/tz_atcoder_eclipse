abc116_a.ecl
###########################################
###########################################
###########################################
###########################################
###########################################
###########################################
###########################################
###########################################
###########################################
:- set_flag(debug_compile, off).
% :- pragma(nodebug).
% :- pragma(nowarnings).

:- set_stream(log_output, stderr).
:- set_stream(warning_output, stderr).

main :-
    read_num(A),
    read_num(B),
    read_num(C),
    T is (A*B)//2,
    write(T),
    nl.

read_str(S) :-
    read_string(user_input, " \n", "", _, S).

read_num(N) :-
    read_str(S),
    number_string(N, S).
###########################################
[python]
a,b,c=map(int,input().split())
print(a*b//2)
###########################################
