%Fatos sobre companhias Ã¡ereas
%comp(sigla, nome)
comp('tap', 'air portugal').
comp('luf', 'lufthansa').
comp('ba',  'british airways').
comp('af',  'air france').
comp('jal', 'japan airlines').

%Fatos sobre voos
% voo(id, origem, destino, companhia)
voo('tap1', 'lisboa', 'frankfurt', 'tap').
voo('luf1', 'lisboa', 'frankfurt', 'luf').
voo('tap2', 'lisboa', 'londres', 'tap').
voo('ba1',  'lisboa', 'londres', 'ba').
voo('tap3', 'lisboa', 'paris', 'tap').
voo('af1',  'lisboa', 'paris', 'af').
voo('ba2', 'londres', 'frankfurt', 'ba').
voo('luf2','londres', 'frankfurt', 'luf').
voo('af2', 'paris', 'frankfurt', 'af').
voo('lu3', 'paris', 'frankfurt', 'luf').
voo('lu4', 'frankfurt', 'munique', 'luf').
voo('lu5', 'munich', 'osaka', 'luf').
voo('lu6', 'munich', 'tokio', 'luf').
voo('ja1', 'osaka', 'tokio', 'jal').
voo('ja2', 'osaka', 'sapporo', 'jal').
voo('ja3', 'osaka', 'yokohama', 'jal').
voo('ja4', 'tokio', 'sapporo', 'jal').
voo('ja5', 'tokio', 'yokohama', 'jal').

%Regras dos ponblemas
rota(ORIGEM,ORIGEM,[]).
rota(ORIGEM,DESTINO,[CODVOO:SIGLAC|Tail]):- voo(CODVOO,ORIGEM,DESTINO2,SIGLAC),rota(DESTINO2,DESTINO,Tail).

vooCidade(CIDADE,L):- findall(R,(voo(_,_,CIDADE,R),L),sort(L, S).

ofertaComp(COMPANHIA,L):- findall(R,voo(R,_,_,COMPANHIA),L).

%Regras para Interfaces
chamaRota(X,Y):-findall(R,rota(X,Y,R),L),writeln(L).

chamaVooC(X):-findall(R,vooCidade(X,R),L),writeln(L).

chamaOferta(X):-findall(R,ofertaComp(X,R),L),writeln(L).

%Interfaces
inteface:-
	new(D,dialog('Companhias Área')),
	send(D,append,button(cidades,message(@prolog,inteVooCidade))),
	send(D,append,button(companhias,message(@prolog,inteCompanhia))),
	send(D,append,new(C,text_item(origem))),
	send(D,append,new(N,text_item(destino))),
	send(D,append,button(ok,message(@prolog,chamaRota,C?selection,N?selection))),
	send(D,append,button(sair,message(D,destroy))),
	send(D,open).

inteVooCidade:-
	new(D,dialog('Companhias Área')),
	send(D,append,new(N,text_item(destino))),
	send(D,append,button(ok,message(@prolog,chamaVooC,N?selection))),
	send(D,append,button(volta,message(D,destroy))),
	send(D,open).

inteCompanhia:-
	new(D,dialog('Companhias Área')),
	send(D,append,new(N,text_item(destino))),
	send(D,append,button(ok,message(@prolog,chamaOferta,N?selection))),
	send(D,append,button(volta,message(D,destroy))),
	send(D,open).

%Utilizar o conceito de listas em prolog.
