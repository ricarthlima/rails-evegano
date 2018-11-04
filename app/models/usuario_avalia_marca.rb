class UsuarioAvaliaMarca < ApplicationRecord
  belongs_to :usuario
  belongs_to :marca
end
