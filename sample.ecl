###########################################
###########################################
###########################################
###########################################
###########################################
###########################################
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






