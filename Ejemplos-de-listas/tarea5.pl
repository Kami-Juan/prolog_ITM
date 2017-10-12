despMenMay([]).
despMenMay(Lista):-
    length(Lista,Tamanio),
    Par is mod(Tamanio,2),
    Par==0,
    sacarMenor(Lista,Menor,LisAux),
    sacarMayor(LisAux,Mayor,LisAux2),
    ListaR =[Mayor,Menor],
    write(ListaR),nl,
    despMenMay(LisAux2).

sacarMenor(Lista,Menor,ListAux)
          :-msort(Lista,Aux),
          reverse(Aux,LisAlre),
          last(LisAlre,Menor),
          select(Menor,Lista,ListAux).

sacarMayor(Lista,Mayor,LisAux):-
    msort(Lista,Aux),
    last(Aux,Mayor),
    select(Mayor,Lista,LisAux).

