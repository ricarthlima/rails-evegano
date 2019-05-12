class WelcomeController < ApplicationController
    def index
        if usuario_signed_in? or cookies.signed[:first_time] == "true" then
            redirect_to inicio_path
        else
            render :index
        end
    end
end

