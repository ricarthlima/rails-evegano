Rails.application.routes.draw do
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
  devise_for :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get "dev" => "dev#index"
  get "inicio" => "inicio#index"
end
