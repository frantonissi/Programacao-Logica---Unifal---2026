pertence(X, [X|_]).
pertence(X, [_|Y]) :- pertence(X, Y).

remove_duplicados([], []).
remove_duplicados([A|B], C) :- pertence(A, B), remove_duplicados(B,C). %Se o A pertence a cauda, ele começa a percorrer a nova lista B e verifica se o B pertence a cauda
remove_duplicados([A|B], [A|C]) :- \+ pertence(A, B), remove_duplicados(B,C). %Se nao pertence, ele tambem vai começara  percorrer a lista nova C e ve se o B ta dentro dela


