%Fatos
mulher(ana).
mulher(eva).
mulher(clo).
mulher(bia).

homem(bob).
homem(ivo).
homem(rui).
homem(rai).

gerou(ana,clo).
gerou(bob,clo).
gerou(eva,rai).
gerou(eva,rui).
gerou(ivo,rui).
gerou(ivo,rai).

casal(X,Y):- 
	gerou(X,Z),gerou(Y,Z),X\=Y.

mae(X,Y):-
	mulher(X),gerou(X,Y).

irmao(X,Y):-
	gerou(Z,X),gerou(Z,Y),gerou(W,X),gerou(W,Y),X\=Y.

pai(X,Y):-
	homen(X),gerou(X,Y).

avos(X,Z):-
	gerou(X,Y),gerou(Y,Z).

