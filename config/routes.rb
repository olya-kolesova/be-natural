Rails.application.routes.draw do
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root to: 'pages#home'
  resources :farms do
    resources :products, only: [:create]
  end
  resources :products, only: [:index, :show, :update, :destroy] do
    resources :order_products, only: [:create]
  end
  resources :orders, only: [:show, :create] do
    post :checkout, on: :member
    resources :payments, only: :new
  end
  resources :order_products, only: [:index, :update, :destroy] do
    member do
      patch :decrease_quantity
      patch :increase_quantity
    end
  end
end
