Rails.application.routes.draw do
  devise_for :users
  resources :infos
  get "infos",     to: "pages#home"
  post "infos",     to: "pages#home"
  get "programme", to: "pages#programme"
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
