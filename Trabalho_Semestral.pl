%Parte A – Ordenação pelo tamanho das sublistas
tamanho_lista([], 0).
tamanho_lista([_|B],X) :- tamanho_lista(B, X1), X is X1 + 1.

%achar o tamanho de cada lista de lista
%O A seria uma sublista([[1,2]])

% Caso base: lista de sublistas vazia gera uma lista de tamanhos vazia
tamanho_subLista([], []).
% Regra recursiva: pega a primeira sublista (A), calcula o tamanho dela (X1)
% e coloca X1 na cabeça da lista de respostas.
tamanho_subLista([A|B], [X1 | Resto]) :- 
    tamanho_lista(A, X1), 
    tamanho_subLista(B, Resto).

ordena([],[]).
ordena([A], [A]).
ordena([A, B | X], [B | D]) :- 
    tamanho_lista(A, TamA), 
    tamanho_lista(B, TamB),
    TamB < TamA,
    ordena([A | X], D).
ordena([A,B|X], [A|D]):-
    tamanho_lista(A, TamA), 
    tamanho_lista(B, TamB),
    TamB >= TamA,
    ordena([B|X], D).

% Parte B – Ordenação pela frequência dos comprimentos

