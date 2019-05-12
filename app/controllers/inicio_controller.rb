class InicioController < ApplicationController
    def index
        cookies.signed[:first_time] = {
            value: "true",
            expires: 5.day
        }
    end
    
    #before_action :authenticate_usuario!
     
end
