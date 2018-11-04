json.extract! usuario_busca_produto, :id, :usuario_id, :produto_id, :dt_busca, :created_at, :updated_at
json.url usuario_busca_produto_url(usuario_busca_produto, format: :json)
