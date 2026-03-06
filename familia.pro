pai(joao, maria).
pai(joao, pedro).
pai(pedro, juan).
mae(maria, maria).
mae(maria, pedro).



/*Consulta para encontrar os filhos de João*/
?- pai(joao, Filho).
/*Consulta para encontrar os filhos de Maria*/
?- mae(maria, Filho).
/*Consulta para encontrar os netos de João*/
?- pai(joao, Filho), pai(Filho, Neto).
/*Consulta para achar o avô de Juan*/
?- pai(Pai, juan),pai(Avô, Pai).
/*Consulta para achar a avó de Juan*/
?- pai(Pai, juan),mae(Avó, Pai).
