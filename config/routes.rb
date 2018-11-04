Rails.application.routes.draw do
  resources :produto_nome_alternativos
  resources :marca_pertence_marcas
  resources :componentes
  resources :produtos
  resources :marcas
  devise_for :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get "primeiro_contato" => "primeiro_contato#index"
end
