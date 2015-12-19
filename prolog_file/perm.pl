perm([X|Y],Z) :- perm(Y,W), takeout(X,Z,W).
perm([],[]).