Rails.application.routes.draw do
  devise_for :users
  get "users",     to: "pages#home"
  post "users",     to: "pages#home"
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
