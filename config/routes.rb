Rails.application.routes.draw do
  resources :marcas
  devise_for :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get "primeiro_contato" => "primeiro_contato#index"
end
