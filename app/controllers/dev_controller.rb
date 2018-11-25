class DevController < ApplicationController
    before_action :authenticate_usuario!
    
    def index
        authorize! :menage, :all
        @usuarios_dev = Usuario.where("dev = true")
    end
    
    def remover
        authorize! :menage, :all
        id = params[:id]
        usu = Usuario.where("id = " + id.to_s)[0]
        usu.dev = false
        usu.save
         flash[:notice] = "Usuário desenvolvedor removido!"
        redirect_to dev_path
    end
    
    def adicionar
        authorize! :menage, :all
        email = params[:email]
        usu = Usuario.where("email = '" + email + "'")
        if usu.size > 0
            usu = usu[0]
            usu. dev = true
            usu.save
            flash[:notice] = "Usuário desenvolvedor adicionado!"
        else
            flash[:notice] = "E-mail não encontrado."
        end
        redirect_to dev_path
    end
end
