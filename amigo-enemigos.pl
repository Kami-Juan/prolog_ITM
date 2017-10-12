son_amigos(juan, pedro).
son_amigos(juan, geo).
son_amigos(juan, alberto).

son_amigos(pedro, angel).
son_amigos(pedro, jerome).
son_amigos(pedro, javier).

son_amigos(geo, angel).
son_amigos(geo, jerome).
son_amigos(geo, javier).

son_amigos(alberto, angel).
son_amigos(alberto, jerome).
son_amigos(alberto, javier).

enemigos(pedro, jerome).
enemigos(pedro, pepe).
enemigos(pedro, casimodo).

enemigos(alberto, jerome).
enemigos(alberto, pepe).
enemigos(alberto, casimodo).

enemigos(geo, jerome).
enemigos(geo, pepe).
enemigos(geo, casimodo).

amigos_de_mis_amigos( Amigo, Amigos, Enemigos ):- son_amigos( Amigo, Amigos), nl, enemigos(Amigos, Enemigos), nl.
