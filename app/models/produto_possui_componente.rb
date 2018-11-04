class ProdutoPossuiComponente < ApplicationRecord
  belongs_to :produto
  belongs_to :componente
end
