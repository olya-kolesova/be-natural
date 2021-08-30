Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # DSL https://guides.rubyonrails.org/routing.html
  resources :farms, only: [:index, :show]
end
