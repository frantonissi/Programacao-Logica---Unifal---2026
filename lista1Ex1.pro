%lista1 Ex1:

analisa_lista([]) :-  %para satisfazer o objetivo de analizar uma lista vazia, eu preciso executar o comando write
    write("lista vazia"), nl.

analisa_lista([X|Y]) :- 
    write("O elemento cabeça e: "), write(X), nl,
    write("O elemento da cauda e a lista: "), write(Y), nl.




