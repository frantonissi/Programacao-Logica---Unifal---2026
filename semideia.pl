%fatos
gerou(kelly, maria).
gerou(cleber, maria).
gerou(cleber, bruna).
gerou(maria, julia).
gerou(maria, pedro).
gerou(pedro, lucas).

feminino(kelly).
feminino(maria).
feminino(julia).
feminino(bruna).
masculino(cleber).
masculino(pedro).
masculino(lucas).

%regras:
% esse negocio :- funciona como um if, nesse caso seria: Y é filho de X
% se X gerou Y

filho(Y, X) :-
    gerou(X, Y).

mae(X, Y) :-
    gerou(X, Y),feminino(X).
avos(X, N):-
    gerou(X, Y), gerou(Y, N).


