class PerfilController < ApplicationController
    before_action :authenticate_usuario!
end
