# encode: utf-8
# language: pt

Funcionalidade: Teste de visualização de histórico de busca
	A fim de visualizar o seu histórico de busca, o usuário deve chegar na
	tela de histórico de pesquisa em até 3 cliques navegando pelo seu perfil.
	

	Cenário: Visualiza histórico de busca
	  Dado que eu acessei a área /tela_principal/index
	  E que eu acessei a area /perfil (navigation-bar)
	  Quando eu selecionar o link historico de busca
	  Então eu devo ser redirecionado para págia /historico
	  E visualizo o histórico de busca.