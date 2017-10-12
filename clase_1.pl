% juguetes(picachu, [ charizard, totodile, picachu]).
% juguetes(picachu, [charizard, totodile, picachu]):-juguetes(picachu, [totodile, picachu]).

es_un_pais(mexico).
es_un_pais(bolivia).
es_un_pais(peru).
es_un_pais(guatemala).
es_un_pais(singapur).
colinda_con(brasil, argentina).
colinda_con(brasil, mexico).
colinda_con(brasil, uruguay).
colinda_con(brasil, bolivia).
colinda_con( uruguay, argentina ).
limitrofes(X,Y) :- colinda_con(X,Y).
limitrofes(X,Y) :- colinda_con(Y,X). 
%funciones aritmeticas y funciones de listas.