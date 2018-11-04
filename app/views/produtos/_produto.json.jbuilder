json.extract! produto, :id, :cod_barras, :nome, :marca_id, :descricao, :class_vegan, :justificativa, :created_at, :updated_at
json.url produto_url(produto, format: :json)
