abc122_a.ecl
##########################################
##########################################
##########################################
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

read_str(S) :-
    read_string(user_input, " \n", "", _, S).
    
main :-
    read_str(S),
    ( 
        S = "A" -> Ans = "T";
        S = "T" -> Ans = "A";
        S = "C" -> Ans = "G";
        S = "G" -> Ans = "C";        
        Ans = "Invalid input" 
    ),
    write(Ans),    
    nl,
    halt.
##########################################
[python]
b=str(input())
if b=='A':
    ans='T'
elif b=='T':
    ans='A'
elif b=='C':
    ans='G'
elif b=='G':
    ans='C'
print(ans)
##########################################
