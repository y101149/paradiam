append([X|Y],Z,[X|W]) :- append(Y,Z,W).
append([],X,X).