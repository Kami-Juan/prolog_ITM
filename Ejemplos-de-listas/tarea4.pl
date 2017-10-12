unir(ListA,ListB,Resp):-
    append(ListA,ListB,RespAux),
    sort(RespAux,Resp).
