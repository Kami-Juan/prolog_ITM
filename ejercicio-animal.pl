animal(caballo).
animal(conejo).
animal(serpiente).
animal(ballena).
animal(delfin).
animal(tigre).
animal(halcon).
animal(aguila).
animal(paloma).
animal(tiburon).
animal(cordero).
animal(tortuga).
animal(perro).
animal(gato).
animal(cangrejo).
animal(camaron).
animal(pulpo).
animal(buitre).
animal(murcielago).
animal(colibri).
animal(dodo).
animal(pinguino).
animal(ardilla).
animal(avestruz).

vertebrado(caballo).
vertebrado(conejo).
vertebrado(serpiente).
vertebrado(ballena).
vertebrado(delfin).
vertebrado(tigre).
vertebrado(halcon).
vertebrado(aguila).
vertebrado(paloma).
vertebrado(cordero).
vertebrado(tortuga).
vertebrado(perro).
vertebrado(gato).
vertebrado(buitre).
vertebrado(murcielago).
vertebrado(colibri).
vertebrado(dodo).
vertebrado(pinguino).
vertebrado(ardilla).
vertebrado(avestruz).

viviparo(caballo).
viviparo(conejo).
viviparo(ballena).
viviparo(delfin).
viviparo(tigre).
viviparo(tiburon).
viviparo(cordero).
viviparo(perro).
viviparo(gato).
viviparo(murcielago).
viviparo(ardilla).


vive_en_agua(ballena).
vive_en_agua(delfin).
vive_en_agua(tiburon).
vive_en_agua(tortuga).
vive_en_agua(camaron).
vive_en_agua(pulpo).

tiene_patas(caballo).
tiene_patas(conejo).
tiene_patas(tigre).
tiene_patas(cordero).
tiene_patas(tortuga).
tiene_patas(perro).
tiene_patas(gato).
tiene_patas(ardilla).
tiene_patas(pinguino).

invertebrado(cangrejo).
invertebrado(camaron).
invertebrado(pulpo).

camina(caballo).
camina(conejo).
camina(tigre).
camina(paloma).
camina(cordero).
camina(tortuga).
camina(perro).
camina(gato).
camina(cangrejo).
camina(camaron).
camina(buitre).
camina(murcielago).
camina(dodo).
camina(pinguino).
camina(ardilla).
camina(avestruz).

es_reptil(serpiente).

es_mamifero_acuatico(Animal) :- vertebrado(Animal), viviparo(Animal), vive_en_agua(Animal).

es_terrestre(Animal):-camina(Animal), vertebrado(Animal), tiene_patas(Animal).
es_terrestre(Animal):-es_reptil(Animal), vertebrado(Animal).

% es_volador(Animal):-tiene_alas(Animal),tiene_plumas(Animal),es_pajaro(Animal).