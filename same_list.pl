listas_iguales(X,Y):- X==Y.
listas_iguales([A|Ca],[B|Cb]):- A==B,listas_iguales(Ca,Cb).