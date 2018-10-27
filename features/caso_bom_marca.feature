# encode: utf-8
# language: pt

Funcionalidade: Teste de busca de informações da marca
	A fim de visualizar informações sobre a marca, o usuário deve receber
	informações da marca digitando o nome da mesma
	

	Cenário: Visualiza informações sobre a marca
	  Dado que eu acessei a área /tela_principal/index
	  E que digitei o nome da marca no campo text_field
	  Quando eu clicar no botão de confirmar
	  Então eu devo ser redirecionado para págia /marca
	  E visualizo a tela de informações sobre a marca pesquisada