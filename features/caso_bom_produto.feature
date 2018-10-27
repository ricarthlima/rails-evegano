# encode: utf-8
# language: pt

Funcionalidade: Consulta detalhada em uma pesquisa por imagem
    Usando uma imagem para pesquisar um código de barras ou um rótulo de um
    produto, se o produto existir no Banco de Dados do aplicativo, mostrar uma
    tela de informações detalhadas sobre o produto em questão.
    
    
    Cenário: Produto existe no BD e foi identificado
        Dado que estou na /tela_principal/index do aplicativo
        E envio uma imagem usando o botão "enviar uma imagem"
        Quando eu fizer a subimissão clicando no botão "enviar"
        Então devo ser redirecionado para página "/produto/index" 
        Dado que estou na tela "/produto/index" do aplicativo
        Então devo ver informações sobre a foto, o nome, a classificação vegana, 
        a marca, a justificativa da classificação e os comentários desse produto.
        
        