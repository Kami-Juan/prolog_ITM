concatenar([],L,L).
concatenar([A|Ca],L2,[A|Cc]):- concatenar(Ca,L2,Cc).
