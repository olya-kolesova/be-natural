Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :farms do
    resources :products, only: [:create]
  end
  resources :products, only: [:index, :show, :update, :destroy]
  resources :orders, only: [:index, :show]
end
