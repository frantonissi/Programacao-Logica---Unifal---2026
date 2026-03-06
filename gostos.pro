gosta(chico, pizza).
gosta(chico, cafe).
gosta(maria, pizza).
gosta(joao, cerveja).
amigos(X,Y) :- gosta(X,Z), gosta(Y,Z), X \= Y.
/*(isso vale pro que vem depois de :-) Primeira condiçao, X gosta de alguma coisa
agora ele procura o Y pra ver se ele tambem gosta de Z, e o X \= Y. verifica se X é igual a Y, se for, ele nao é amigo, se for diferente, ele é amigo.>
*/
amigos(X,Y) :- gosta(X,Z), gosta(Y,Z), X \= Y.