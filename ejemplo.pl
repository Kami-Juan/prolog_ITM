% woman(mia).
% woman(jody).
% woman(yolanda).
% playsAirGuitar(jody).
% party.

happy(yolanda).
listens2Music(mia).
listens2Music(yolanda):- happy(yolanda).
playsAirGuitar(mia):- listens2Music(mia).
playsAirGuitar(yolanda):- listens2Music(yolanda).

% happy(vincent).
% listens2Music(butch).
% playsAirGuitar(vincent):-
%    listens2Music(vincent),
%    happy(vincent).
% playsAirGuitar(butch):-
%    happy(butch).
% playsAirGuitar(butch):-
%    listens2Music(butch).




