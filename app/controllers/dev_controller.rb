class DevController < ApplicationController
    before_action :authenticate_usuario!
    
    def index
        authorize! :menage, :all
    end
end
