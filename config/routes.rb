Rails.application.routes.draw do
  resources :cadastro_externos
  resources :produto_imagems
  resources :marca_nome_alternativos
  resources :usuario_avalia_marcas
  resources :usuario_avalia_produtos
  resources :usuario_busca_marcas
  resources :usuario_busca_produtos
  resources :usuario_busca_componentes
  resources :produto_possui_componentes
  resources :componente_nome_alternativos
  resources :produto_nome_alternativos
  resources :componentes
  resources :produtos
  resources :marcas
  
  #devise_for :usuarios
  devise_for :usuarios, controllers: { omniauth_callbacks: 'usuarios/omniauth' }

  root 'inicio#index'
  get "dev" => "dev#index"
  get "dev/remover/:id", to: "dev#remover", as: "remover_dev"
  get "dev/adicionar/", to: "dev#adicionar", as: "adicionar_dev"
  
  get "inicio" => "inicio#index"
  get "welcome" => "inicio#go"
  
  get "busca" => "busca#buscar"
  get "busca_ocr" => "busca#buscar_ocr"
  get "busca_cod" => "busca#buscar_cod"
  
  get "produto_imagems/new/:id" => "produto_imagems#new" 
  get "perfil" => "perfil#index"
  get "historico" => "historico#index"
  
  get "equipeone" => "welcome#equipeone"

end
