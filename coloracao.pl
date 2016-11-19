cor(azul).
cor(amarelo).
cor(verde).

coloracao(A,B,C,D,E):-cor(A),cor(B),cor(C),cor(D),cor(E),
	A \= B, A\= C, A\= D, A\= E, 
	B\= C, B\=E, 
	D\= E, D\= C,
	E\=C.
