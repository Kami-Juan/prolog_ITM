%  Principio al punto.
%  _ es lo que no busca, no le interesa, sé que no está allí
%  Siempre agarra mi programa
%  is nunca se usa 
pertenece_a(Elemento ,[Elemento|_]).
pertenece_a(Elemento ,[_|Cola]):- pertenece_a(Elemento,Cola).

%trace