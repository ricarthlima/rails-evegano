# encode: utf-8
# language: pt

Funcionalidade: Selecionar categoria não específica de usuário
	A fim de se cadastrar, o usuário deve selecionar um tipo de usuário na tela 
	de cadastro

	Cenário: Seleciona tipo
	  Dado que eu estou na tela de cadastro de tipo de usuário
	  E eu já passei pelos cadastros anteriores
	  Quando eu selecionar o tipo "outros"
	  Então eu deveria ter um tipo de usuário "outros"