class BuscaController < ApplicationController
    before_action :authenticate_usuario!
    
    def index
    end
    
    def show
    end
    
    def buscar_ocr
        @ocr = params[:ocr]
        puts("-----------------\n"+@ocr.to_s+"\n--------------")
        flash[:notice] = @ocr
        redirect_to inicio_path
    end

    def buscar_cod
        cod = params[:cod]
        produtos = Produto.where("cod_barras = '"+cod+"'")
        
        if produtos.size > 0
            redirect_to produtos[0]
        else
            flash[:notice] = "Não achamos nenhum produto com esse código de barras."
            redirect_to inicio_path
        end
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
    
    # Essa função pega todos elementos do banco e compara com o termo buscado numa
    # distância de Levenshtein maior que 0 (mesmo termo), e menor que 3.
    def leven(busca)
        proximos = Array.new
        objetos = Array.new
        
        objetos = objetos + Produto.all + Marca.all + Componente.all
        objetos.each do |obj|
            distancia = leven_quebrar(busca,obj.nome)
            if distancia > 0 and distancia < 3
                proximos << obj
            end
        end
        
        return proximos
    end
    
    # Essa função faz o valor "distância" da função anterior ser comparado por cada
    # palavra dentro dos termo buscado, e não o termo buscado completo.
    def leven_quebrar(busca, termo)
        menor = Levenshtein.distance(termo.downcase,busca.to_s.downcase)
        termo = termo.split(" ")
        
        termo.each do |palavra|
            if Levenshtein.distance(palavra.downcase,busca.to_s.downcase) < menor
                menor = Levenshtein.distance(palavra.downcase,busca.to_s.downcase)
            end
        end
        
        return menor
    end
end
