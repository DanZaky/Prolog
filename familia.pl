padrede('juan','maria').
padrede('pablo','jesus').
padrede('pablo','marcela').
padrede('carlos','lucia').
padrede('carlos','luis').
padrede('daniela','maria').
padrede('juliana','lucia').
padrede('juliana','luis').
padrede('isabel','marcela').
padrede('isabel','jesus').
padrede('sofia','juan').
padrede('sofia','juliana').
padrede('maria','jose').
padrede('juan','maria').
padrede('luis','pamela').
padrede('marcela','pamela').
padrede('pamela','gustavo').
padrede('jose','gustavo').
padrede('pamela','lina').
padrede('jose','lina').
padrede('ruben','daniela').
padrede('ruben','isabel').
padrede('jesus','jose').

tiode(A,B) :-hermanode(A,C), padrede(C,B).

sobrinode(A,B) :-tiode(B,A).

bisabuelode(A,B) :-padrede(A,C), padrede(C,D), padrede(D,B).

bisnietode(A,B) :-bisabuelode(B,A).

hijode(A,B) :-padrede(B,A).

abuelode(A,B) :-padrede(A,C), padrede(C,B).

nietode(A,B) :-abuelode(B,A).

esposode(A,B) :-padrede(A,C), padrede(B,C).

hermanode(A,B) :-padrede(C,A), padrede(C,B), A \== B.

primo(A,B) :-hermanode(C,D), hijode(A,C), hijode(B,D).

cuñadode(A,B) :-hermanode(A,C), esposode(C,B).

familiarde(A,B) :-padrede(A,B).
familiarde(A,B) :-abuelode(A,B).
familiarde(A,B) :-hermanode(A,B).

eshombre('luis').
eshombre('jesus').
eshombre('juan').
eshombre('jose').
eshombre('gustavo').

