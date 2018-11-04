class UsuarioBuscaComponente < ApplicationRecord
  belongs_to :usuario
  belongs_to :componente
end
