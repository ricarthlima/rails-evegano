class HistoricoController < ApplicationController
    def index
        produtos_buscados = UsuarioBuscaProduto.where("usuario_id = " + current_usuario.id.to_s).order(dt_busca: :desc)
        marcas_buscadas = UsuarioBuscaMarca.where("usuario_id = " + current_usuario.id.to_s).order(dt_busca: :desc)
        componentes_buscados = UsuarioBuscaComponente.where("usuario_id = " + current_usuario.id.to_s).order(dt_busca: :desc)
        
        @produtos_buscados = Array.new
        @marcas_buscadas = Array.new
        @componentes_buscados = Array.new
        
        produtos_buscados.each do |prod|
            @produtos_buscados << [Produto.where("id = "+prod.produto_id.to_s)[0], prod.dt_busca.to_s.slice(0,19)]
        end
        
        marcas_buscadas.each do |marca|
            @marcas_buscadas << [Marca.where("id = " + marca.marca_id.to_s)[0], marca.dt_busca.to_s.slice(0,19)]
        end
        
        componentes_buscados.each do |comp|
            @componentes_buscados << [Componente.where("id = " + comp.componente_id.to_s)[0], comp.dt_busca.to_s.slice(0,19)]
        end
    end
end
