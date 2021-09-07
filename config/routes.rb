Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root to: 'pages#home'
  resources :farms do
    resources :products, only: [:create]
  end
  resources :products, only: [:index, :show, :update, :destroy] do
    resources :order_products, only: [:create]
  end
  resources :orders, only: [:show]
  resources :order_products, only: [:index, :update, :destroy] do
    member do
      patch :decrease_quantity
      patch :increase_quantity
    end
  end
end
