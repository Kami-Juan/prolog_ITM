clonlist([], []). 
clonlist([C|R], [C|R1]):- 
clonlist(R, R1). 