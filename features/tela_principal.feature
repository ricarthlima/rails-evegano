# encode: utf-8
# language: pt

Funcionalidade: Funcionalidades principais na tela principal
    A tela inicial deve ter um TextField para inserção dos termos de busca,
    deve ter também um Button para envio de imagens que podem ser usadas na busca,
    e por fim deve ter um FloatingButton para submissão dessas informações.

    Cenário: Busca por texto 
        Dado que estou na /tela_principal/index do aplicativo
        E eu quero fazer uma busca textual por um nome
        Quando eu digitar um nome de um produto, marca ou componente
        E eu clicar no botão de "enviar"
        Então a informação deve ser enviada para o controlador responsável
        
    Cenário: Busca por imagem
        Dado que eu estou na /tela_principal/index do aplicativo
        E eu quero fazer uma busca por upload de imagem
        Quando eu clicar no botão "enviar_imagem"
        Então deve-se abrir um campo para upload da imagem
        Quando eu clicar no botão de "enviar"
        Então a informação deve ser enviada para o controlador responsável