hombre(juan_de_dios).
hombre(rodrigo).
hombre(eduardo_jr).
hombre(sergio_primo).
hombre(jesus).
hombre(braulio).
hombre(aaron).
hombre(conrado).
hombre(sergio).
hombre(luis).
hombre(eduardo).
hombre(francisco).
hombre(octavio).
hombre(arsenio).
hombre(beto).
hombre(abuelo_paterno).
hombre(humberto_padre).
%---------------------------- 
mujer(teresa).
mujer(vita).
mujer(silvia).
mujer(venancia).
mujer(alejandra).
mujer(elizabeth).
mujer(mary).
mujer(mary_cen).
mujer(olga).
mujer(patty).
mujer(patty_glory).
mujer(martha).
mujer(geny).
mujer(maya).

%----------------------------------- 
casado_con(matilde, humberto_padre).
casado_con(venancia, abuelo_paterno).

casado_con(teresa, braulio).
casado_con(mary_cen, sergio).
casado_con(olga, luis).
casado_con(martha, eduardo).
casado_con(francisco, silvia).
casado_con(octavio, maya).
casado_con(beto, geny).
casado_con(teresa, braulio).
casado_con(mary_cen, sergio).
casado_con(olga, luis).
casado_con(martha, eduardo).
casado_con(francisco, silvia).
casado_con(octavio, maya).
casado_con(beto, geny).

% casado_con(matilde, humberto_padre).
% casado_con(venancia, abuelo_paterno).
madre_de(matilde,mary_cen).
madre_de(matilde,patty).
madre_de(matilde,teresa).
madre_de(matilde,olga).
madre_de(matilde,martha).
madre_de(matilde,francisco).
madre_de(matilde,beto).
madre_de(matilde,octavio).
madre_de(matilde,arsenio).

madre_de(mary_cen, sergio_hr).
madre_de(mary_cen, rodrigo).
madre_de(mary_cen, elizabeth).
madre_de(olga, luis_jr).
madre_de(patty_glory, alejandra_jr).
madre_de(martha, eduardo_jr).
madre_de(martha, mariana).
madre_de(martha, martha_jr).
madre_de(silvia, prima_f_s_1).
madre_de(silvia, prima_f_s_2).
madre_de(silvia, primo_f_s_3).
madre_de(geny, pepe).
madre_de(geny, isabel).
madre_de(maya, primo_o_m_1).
madre_de(maya, prima_o_m_1).
madre_de(teresa, juan_de_dios).

padre_de(sergio, sergio_hr).
padre_de(braulio, juan_de_dios).
padre_de(sergio, rodrigo).
padre_de(sergio, elizabeth).
padre_de(luis, luis_jr).
padre_de(eduardo, eduardo_jr).
padre_de(eduardo, mariana).
padre_de(eduardo, martha_jr).
padre_de(francisco, prima_f_s_1).
padre_de(francisco, prima_f_s_2).
padre_de(francisco, primo_f_s_3).
padre_de(beto, pepe).
padre_de(beto, isabel).
padre_de(octavio, primo_o_m_1).
padre_de(octavio, prima_o_m_1).

padre_de(humberto_padre,mary_cen).
padre_de(humberto_padre,teresa).
padre_de(humberto_padre,patty).
padre_de(humberto_padre,olga).
padre_de(humberto_padre,martha).
padre_de(humberto_padre,francisco).
padre_de(humberto_padre,beto).
padre_de(humberto_padre,octavio).
padre_de(humberto_padre,arsenio).


tios_solteros(aaron).
tios_solteros(conrado).
tios_solteros(vita).
tios_solteros(mary).
tios_solteros(patty_glory).
tios_solteros(arsenio).

%------------------------------------------------- 
% is_tio(Tio):- hombre(Tio), tios(Tio).
% is_tia(Tia):- mujer(Tia), tios(Tia).

% hijo(Tio, Tia, Hijo):- is_tio(Tio), is_tia(Tia), primos(Tio, Tia, Hijo).
hijo_de( Padre ):- padre_de(Padre, Hijo), nl, write(Hijo); madre_de(Padre, Hijo), nl, write(Hijo).

nieto(Abuelo):- padre_de(Abuelo, Hijo), padre_de(Hijo, Nieto), write(Nieto); padre_de(Abuelo, Hijo), madre_de(Hijo, Nieto),  write(Nieto); madre_de(Abuelo, Hijo), padre_de(Hijo, Nieto), write(Nieto); madre_de(Abuelo, Hijo), madre_de(Hijo, Nieto), write(Nieto).

% tio(Hijo):- hijo_de(Padre, Hijo), padre_de().
hermano_de(HermanoUno, HermanoDos):- padre_de(Padre, HermanoUno), padre_de(Padre, HermanoDos), not(HermanoUno=HermanoDos);
madre_de(Padre, HermanoUno), padre_de(Padre, HermanoDos), not(HermanoUno=HermanoDos).

es_sobrino(Tio, Sobrino):- hermano_de(N, Tio), madre_de(N, Sobrino); hermano_de(N, Tio), padre_de(N, Sobrino).

es_tio(Sobrino):-es_sobrino(Tio, Sobrino), write(Tio).