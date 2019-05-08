class InicioController < ApplicationController
    def index
        if !usuario_signed_in? then
            if cookies[:first_time] == "true" then
                render :index
            else
                render :welcome
            end
        end
        
    end
    
    def go
        cookies[:first_time] = "true"
        render :index
    end
    
    #before_action :authenticate_usuario!
     
end
