eliminar(_,[],[]):- fail. 
eliminar(X,[X|R],R). 
eliminar(X,[C|R],[C|R1]):-eliminar(X,R,R1). 