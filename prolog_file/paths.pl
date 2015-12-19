link(a,b).
link(b,p).
link(b,c).
link(c,d).
link(d,q).
link(d,r).

parent(X,Y):-
    link(X,Y).
parent(X,Y):-
    link(X,Z),
    parent(Z,Y).


path(A,B):-
    link(A,B),
    write(A),
    write('->'),
    write(B).

path(A,B):-
    parent(C,B),
    link(A,C),
    write(A),
    write('->'),
    write(C),
    nl,
    path(C,B).