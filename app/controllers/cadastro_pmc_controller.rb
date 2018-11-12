class CadastroPmcController < ApplicationController
    def index
        @nome_busca = params[:busca]
    end
end
