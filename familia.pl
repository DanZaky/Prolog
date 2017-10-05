padrede('daniel','maria').
padrede('pablo','jesus').
padrede('pablo','marcela').
padrede('carlos','lucia').
padrede('carlos','luis').
padrede('daniela','maria').
padrede('juliana','lucia').
padrede('juliana','luis').
padrede('isabel','marcela').
padrede('isabel','jesus').
padrede('sofia','daniel').
padrede('sofia','juliana').
padrede('maria','jose').
padrede('daniel','maria').
padrede('luis','pamela').
padrede('marcela','pamela').
padrede('pamela','gustavo').
padrede('jose','gustavo').
padrede('pamela','lina').
padrede('jose','lina').
padrede('ruben','daniela').
padrede('ruben','isabel').
padrede('jesus','jose').
padrede('marcos','fredy').
padrede('marlon','fredy').
padrede('francisca','raul').
padrede('manuela','raul').

eshombre('luis').
eshombre('jesus').
eshombre('daniel').
eshombre('jose').
eshombre('gustavo').
eshombre('ruben').
eshombre('marcos').
eshombre('marlon').

esmujer('maria').
esmujer('marcela').
esmujer('lucia').
esmujer('daniela').
esmujer('isabel').
esmujer('sofia').
esmujer('pamela').
esmujer('lina').
esmujer('francisca').
esmujer('manuela').

tiode(A,B) :-hermanode(A,C), padrede(C,B).

sobrinode(A,B) :-tiode(B,A).


bisabuelode(A,B) :-padrede(A,C), padrede(C,D), padrede(D,B).

bisnietode(A,B) :-bisabuelode(B,A).

hijode(A,B) :-padrede(B,A).

abuelode(A,B) :-padrede(A,C), padrede(C,B).

nietode(A,B) :-abuelode(B,A).

esposode(A,B) :-padrede(A,C), padrede(B,C), A \==B.

hermanode(A,B) :-padrede(C,A), padrede(C,B), A \== B.

primo(A,B) :-hermanode(C,D), hijode(A,C), hijode(B,D).

cuñadode(A,B) :-hermanode(A,C), esposode(C,B).

familiarde(A,B) :-padrede(A,B).
familiarde(A,B) :-abuelode(A,B).
familiarde(A,B) :-hermanode(A,B).

esfeliz(A) :- padrede(A,B), padrede(C,B), A \== C. 

esadoptado(A) :- padrede(B,A), padrede(C,A), eshombre(B), eshombre(C), B \== C.
esadoptado(A) :- padrede(B,A), padrede(C,A), esmujer(B), esmujer(C), B \== C.
