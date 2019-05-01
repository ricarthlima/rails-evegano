class InicioController < ApplicationController
    def index
        if !usuario_signed_in? then
            if cookies[:first_time] == "true" then
                render :index
            else
                cookies[:first_time] = "true"
                render :welcome
            end
        end
        
    end
    
    #before_action :authenticate_usuario!
     
end
