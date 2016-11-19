%fatos

deputado('Abel Mesquita', 'DEM','RR').
deputado('Alberto Fraga','DEM','DF').
deputado('Alexandre Leite','DEM','SP').
deputado('Carlos Melles','DEM','MG').
deputado('Claudio Cajado','DEM','BA').
deputado('Efraim Filho','DEM','PB').
deputado('Chico Lopes', 'PCdoB','CE').
deputado('Andre Figueiredo','PDT','CE').
deputado('Leonidas Cristino','PDT','CE').
deputado('Vicente Arruda','PDT','CE').
deputado('Anibal Gomes', 'PMDB', 'CE').
deputado('Moses Rodrigues', 'PMDB', 'CE').
deputado('Vitor Valim', 'PMDB', 'CE').
deputado('Adail Carneiro','PP,','CE').
deputado('Macedo', 'PP', 'CE').
deputado('Cabo Sabino'	'PR', 'CE').
deputado('Gorete Pereira','PR', 'CE').
deputado('Ronaldo Martins' 'PRB', 'CE').
deputado('Odorico Monteiro', 'PROS', 'CE').
deputado('Danilo Forte', 'PSB', 'CE').
deputado('Domingos Neto', 'PSB', 'CE').
deputado('Raimundo Gomes de Matos', 'PSDB',	'CE').
deputado('José Airton Cirilo', 'PT', 'CE').
deputado('José Guimarães', 'PT', 'CE').
deputado('Luizianne Lins', 'PT', 'CE').

votacaoPEC241('Abel Mesquita','sim').
votacaoPEC241('Alberto Fraga','sim').
votacaoPEC241('Alexandre Leite','sim').
votacaoPEC241('Carlos Melles', 'sim').
votacaoPEC241('Claudio Cajado','sim').
votacaoPEC241('Efraim Filho','sim').
votacaoPEC241('Chico Lopes', 'nao').
votacaoPEC241('Andre Figueiredo', 'nao').
votacaoPEC241('Leonidas Cristino','nao').
votacaoPEC241('Vicente Arruda','nao').
votacaoPEC241('Anibal Gomes','sim').
votacaoPEC241('Moses Rodrigues','sim').
votacaoPEC241('Vitor Valim','sim').
votacaoPEC241('Adail Carneiro','sim').
votacaoPEC241('Macedo',	'sim').
votacaoPEC241('Ronaldo Martins','sim').
votacaoPEC241('Cabo Sabino','sim').
votacaoPEC241('Gorete Pereira','sim').
votacaoPEC241('Odorico Monteiro','nao').
votacaoPEC241('Danilo Forte', 'sim').
votacaoPEC241('Domingos Neto', 'sim').
votacaoPEC241('Raimundo Gomes de Matos', 'sim').
votacaoPEC241('José Airton Cirilo', 'nao').
votacaoPEC241('José Guimarães', 'nao').
votacaoPEC241('Luizianne Lins', 'nao').

%regras
aFavorPEC241(X) :- deputado(X,Y,Z), votacaoPEC241(X,'sim').
contraPEC241(X) :- deputado(X,Y,Z), votacaoPEC241(X,'nao').
