class BuscaController < ApplicationController
    def buscar
        @nome_busca = params[:texto]
        
        @candidatos_produtos = Produto.where "nome like ?", "%#{@nome_busca}%"
        @candidatos_marcas = Marca.where "nome like ?", "%#{@nome_busca}%"
        @candidatos_componentes = Componente.where "nome like ?", "%#{@nome_busca}%"
        
        puts("# TDD haha---------------------")
        puts(@nome_busca)
        puts(@candidatos_produtos.size)
        puts(@candidatos_marcas.size)
        puts(@candidatos_componentes.size)
        puts("# TDD hah---------------------")
        
        if @candidatos_produtos.size == 1
            redirect_to(produtos_url+"/"+@candidatos_produtos[0].id.to_s)
        elsif @candidatos_marcas.size == 1
            redirect_to(marcas_url+"/"+@candidatos_marcas[0].id.to_s)
        elsif @candidatos_componentes.size == 1
            redirect_to(componentes_url+"/"+@candidatos_componentes[0].id.to_s)
        else
            redirect_to(inicio_path)
        end
    end
end
