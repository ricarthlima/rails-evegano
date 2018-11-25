json.extract! cadastro_externo, :id, :cod_barras, :nome, :marca, :descricao, :componentes, :created_at, :updated_at
json.url cadastro_externo_url(cadastro_externo, format: :json)
