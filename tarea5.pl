despMenMay(Lista):-
    length(Lista,Tamanio),
    1 is Tamanio mod 2.

despMenMay(Lista):-
    msort(Lista,ListaOr),
    sacarMenor(ListaOr).

sacarMenor([Menor|Cola]):-
    reverse(Cola,ListaSinMenor),
    sacarMayor(ListaSinMenor,Menor).

sacarMayor([Mayor|Cola],Menor):-
    write([Mayor,Menor]),nl,
    despMenMay(Cola).


















































