and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

neg(true, false).
neg(false, true).

logicGate(A, B, Output) :-
    and(A, B, Part1),
    neg(A, NotA),
    neg(B, NotB),
    and(NotA, NotB, Part2),
    or(Part1, Part2, Output).
