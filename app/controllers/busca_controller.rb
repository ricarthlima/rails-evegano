class BuscaController < ApplicationController
    def index
    end
    
    def show
    end

    def buscar
        @nome_busca = params[:texto]
        
        @candidatos_produtos = Produto.where "lower(nome) like lower(?)", "%#{@nome_busca}%"
        @candidatos_marcas = Marca.where "lower(nome) like lower(?)", "%#{@nome_busca}%"
        @candidatos_componentes = Componente.where "lower(nome) like lower(?)", "%#{@nome_busca}%"
        
        if @candidatos_produtos.size == 1 and (@candidatos_marcas.size == 0) and (@candidatos_componentes.size == 0)
            redirect_to(produtos_url+"/"+@candidatos_produtos[0].id.to_s)
            
        elsif @candidatos_marcas.size == 1 and (@candidatos_produtos.size == 0) and (@candidatos_componentes.size == 0)
            redirect_to(marcas_url+"/"+@candidatos_marcas[0].id.to_s)
            
        elsif @candidatos_componentes.size == 1 and (@candidatos_marcas.size == 0) and (@candidatos_produtos.size == 0)
            redirect_to(componentes_url+"/"+@candidatos_componentes[0].id.to_s)
            
        elsif @candidatos_componentes.size == 0 and @candidatos_produtos.size == 0 and @candidatos_marcas.size == 0
            redirect_to(inicio_path)
        else
            render :index
        end
    end
    
    private 
end
