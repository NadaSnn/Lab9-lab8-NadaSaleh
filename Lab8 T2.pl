sumlist([], 0).

sumlist([H | T], S) :-
    sumlist(T, TS),
    S is H + TS.
