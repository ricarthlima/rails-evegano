json.extract! produto_imagem, :id, :titulo, :descricao, :created_at, :updated_at
json.url produto_imagem_url(produto_imagem, format: :json)
