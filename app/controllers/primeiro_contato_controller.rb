class PrimeiroContatoController < ApplicationController
    def index
    end
    
    before_action :authenticate_usuario!
end
