class BuscaController < ApplicationController
    def buscar
        @nome_busca = params[:nome]
        puts("camelo")
        puts(@nome_busca)
        redirect_to(inicio_path)
    end
end
