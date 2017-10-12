lagarto(iguana).
lagarto(cocodrilo).
lagarto(tolok).
lagarto(godzilla).

serpiente(vibora).
serpiente(sviper).
serpiente(arbok).
serpiente(culebrilla).

tiene_pelo(conejo).
tiene_pelo(caballo).
tiene_pelo(mono).
tiene_pelo(rata).
% :- significa if

viviparo(caballo).
viviparo(conejo).
viviparo(rata).

toma_leche(caballo).
toma_leche(conejo).
toma_leche(rata).

mamifero(Animal) :- tiene_pelo(Animal), viviparo(Animal), toma_leche(Animal).

