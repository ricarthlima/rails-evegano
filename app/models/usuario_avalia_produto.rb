class UsuarioAvaliaProduto < ApplicationRecord
  belongs_to :usuario
  belongs_to :produto
end
