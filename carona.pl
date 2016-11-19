cidade(jaguaruana).
cidade(iberetama).
cidade(palhano).
cidade(quixada).
cidade(ibicuitinga).

pessoa(ana).
pessoa(rai).
pessoa(bia).
pessoa(edu).
pessoa(gil).
pessoa(eva).

moraEm(ana,jaguaruana).
moraEm(rai,jaguaruana).
moraEm(bia,iberetama).
moraEm(edu,palhano).
moraEm(gil,quixada).
moraEm(eva,ibicuitinga).

ficaNaRegiao(jaguaruana,'Vale do Jaguaribe').
ficaNaRegiao(palhano,'Vale do Jaguaribe').
ficaNaRegiao(iberetama,'Sertão Central').
ficaNaRegiao(quixada,'Sertão Central').
ficaNaRegiao(ibicuitinga,'Sertão Central').

temCarro(ana).
temCarro(gil).

podeDarCarona(X,Y):-
	temCarro(X),moraEm(X,Z),moraEm(Y,W),ficaNaRegiao(Z,A),ficaNaRegiao(W,A),X\=Y.


