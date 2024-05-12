abc068_a.ecl
##########################################
##########################################
##########################################
##########################################
:- set_flag(debug_compile, off).
% :- pragma(nodebug).
% :- pragma(nowarnings).
:- set_stream(log_output, stderr).
:- set_stream(warning_output, stderr).

read_str(S) :-
    read_string(user_input, " \n", "", _, S).

main :-
    read_str(A),
    string_concat("ABC", A, B),
    write(B),
    nl,
    halt.
##########################################
[python]
A=str(input())
print("ABC"+A)
##########################################
