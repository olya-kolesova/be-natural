Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :farms
  resources :products, only: [:index, :show, :create]
end
