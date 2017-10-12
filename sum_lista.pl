total([],0). 
total([C|L],T):- total(L,T1), T is T1+C. 
