abc114_a.ecl
##########################################
if文
(X-7)*(X-5)*(X-3)=:= 0 ->
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
main :-
    read_num(X),
    ( (X-7)*(X-5)*(X-3)=:= 0 ->
      write("YES"); 
      write("NO")
    ),
    nl.

read_str(S) :-
    read_string(user_input, " \n", "", _, S).

read_num(N) :-
    read_str(S),
    number_string(N,S).
##########################################
[python]
X=int(input())
if (X-7)*(X-5)*(X-3)==0:
  print('YES')
else:
  print('NO')
##########################################
