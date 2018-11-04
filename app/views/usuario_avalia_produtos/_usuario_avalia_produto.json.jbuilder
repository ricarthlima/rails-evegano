json.extract! usuario_avalia_produto, :id, :usuario_id, :produto_id, :estrelas, :comentario, :dt_avaliacao, :created_at, :updated_at
json.url usuario_avalia_produto_url(usuario_avalia_produto, format: :json)
