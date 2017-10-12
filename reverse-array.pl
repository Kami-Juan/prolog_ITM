may_men_array_sort([]).
may_men_array_sort(List):- length(List, Size), 1 is Size mod 2, msort(List, ListMay), sort_min(ListMay).
sort_min([Min|Tail]):- reverse(Tail, WithOutMin), get_may(WithOutMin, Min).
get_may([Mayor|Cola],Min):-write([Mayor,Min]),nl, may_men_array_sort(Cola).

