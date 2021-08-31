Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :farms, only: [:index, :show, :new, :create]
  resources :products, only: [:index, :show, :create]
  resources :orders, only: [:index, :show]
end
