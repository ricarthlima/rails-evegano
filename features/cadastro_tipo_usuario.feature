# encode: utf-8
# language: pt

@cadastro_tipo_usuario
Funcionalidade: Selecionar categoria não específica de usuário
	A fim de se cadastrar, o usuário deve selecionar um tipo de usuário na tela 
	de cadastro.

	Cenário: Seleciona tipo
	  Dado que eu estou na tela de cadastro de tipo de usuário
	  Quando eu selecionar o tipo "outros"
	  E eu clicar em cadastrar
	  Então eu deveria ter um tipo de usuário "outros".