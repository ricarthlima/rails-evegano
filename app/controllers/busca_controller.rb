class BuscaController < ApplicationController
    def index
    end
    
    def show
    end

    def buscar
        @nome_busca = params[:texto]
        @proximos = leven(@nome_busca)
        
        if busca_vazia
            redirect_to inicio_path
            return
        end
        
        @candidatos_produtos = Produto.where "lower(nome) like lower(?)", "%#{@nome_busca}%"
        @candidatos_marcas = Marca.where "lower(nome) like lower(?)", "%#{@nome_busca}%"
        @candidatos_componentes = Componente.where "lower(nome) like lower(?)", "%#{@nome_busca}%"
        
        if @candidatos_produtos.size == 1 and (@candidatos_marcas.size == 0) and (@candidatos_componentes.size == 0)
            redirect_to(produtos_url+"/"+@candidatos_produtos[0].id.to_s)
            
        elsif @candidatos_marcas.size == 1 and (@candidatos_produtos.size == 0) and (@candidatos_componentes.size == 0)
            redirect_to(marcas_url+"/"+@candidatos_marcas[0].id.to_s)
            
        elsif @candidatos_componentes.size == 1 and (@candidatos_marcas.size == 0) and (@candidatos_produtos.size == 0)
            redirect_to(componentes_url+"/"+@candidatos_componentes[0].id.to_s)

        else
            render :index
        end
    end
    
    private 
    
    def busca_vazia
        if @nome_busca == ""
            return true
        else
            return false
        end
    end
    
    def leven(busca)
        proximos = Array.new
        
        Produto.all.each do |produto|
            distancia = Levenshtein.distance(produto.nome,busca)
            if distancia > 0 and distancia < 3
                proximos << produto
            end
        end
        
        Marca.all.each do |marca|
            distancia = Levenshtein.distance(marca.nome, busca)
            if distancia > 0 and distancia < 3
                proximos << marca
            end
        end
        
        Componente.all.each do |comp|
            distancia = Levenshtein.distance(comp.nome, busca)
            if distancia > 0 and distancia < 3
                proximos << comp
            end
        end
        
        return proximos
    end
end
