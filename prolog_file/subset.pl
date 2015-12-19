subset([X|R],S) :- member(X,S), subset(R,S).
subset([],_).