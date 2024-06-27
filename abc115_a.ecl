abc115_a.ecl
##########################################
main プロシージャの前に :- export main/0. を追加しました。
これにより、main プロシージャがモジュールの外部から呼び出し可能になります。
:- export main/0.
main :-
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################

:- set_flag(debug_compile, off).
:- set_stream(log_output, stderr).
:- set_stream(warning_output, stderr).

read_str(S) :-
    read_string(user_input, " \n", "", _, S).

read_num(N) :-
    read_str(S),
    number_string(N, S).

:- export main/0.
main :-
    read_num(D),
    
    (D =:= 22 ->
      write("Christmas Eve Eve Eve"), nl;
    D =:= 23 ->
      write("Christmas Eve Eve"), nl;
    D =:= 24 ->
      write("Christmas Eve"), nl;
    D =:= 25 ->
      write("Christmas"), nl;
    true 
    ),
    
    halt.

##########################################
[python]
D=int(input())
L=["Christmas Eve Eve Eve","Christmas Eve Eve","Christmas Eve","Christmas"]
print(L[D-22])
##########################################
