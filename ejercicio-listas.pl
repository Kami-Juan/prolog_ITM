% first(Elemento,[Elemento|_]).
% second(_,[_|Cola]).
% second(_,[Cola|])


% mix_list([],L,L).
% mix_list([A|Ca],L2,[A|Cc]):- mix_list(Ca,L2,Cc), Cc is sort(Cc, X)

% mix_list(List1, List2, ListFinale) :- append(List1, List2, X), msort(X, ListFinale).

%elabore una funcion que despligue pares mayor menor de una lista como se indica en el ejemplo = [19,4,0,29,-8,102]

list_crazy(0, []).
list_crazy(List, Finale) :- msort(List, X), sort(0, @>=, X, Y), append(X,Y,Finale).
% :- msort(List, X), sort(0, @>=, X, Y), append(X,Y,Lists).
% list_crazy([A|C],[A|B]).