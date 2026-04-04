%lista 1 EX3

%pertence(X, [X|_]).
%pertence(X, [_|Cauda]) :- pertence(X, Cauda).
    


troca([], _, _, []).
% Regra 2: A cabeça da lista original é igual ao Alvo.
% Note que usamos a mesma variável 'Alvo' no 1º e 2º argumento para forçar essa igualdade.
troca([Alvo | CaudaOriginal], Alvo, Substituto, [Substituto | CaudaNova]) :-
    % Aqui você chama a recursão para continuar trocando o resto:
    troca(CaudaOriginal, Alvo, Substituto, CaudaNova).
% Regra 3: A cabeça é um elemento qualquer, diferente do Alvo.
troca([Cabeca | CaudaOriginal], Alvo, Substituto, [Cabeca | CaudaNova]) :-
    Cabeca \= Alvo, troca(CaudaOriginal, Alvo, Substituto, CaudaNova).