Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  resources :baskets, only: [:new, :create]
  resources :orders, only: [:new, :create, :update] do
    post 'set_address', on: :member
    get 'pick_address', on: :member
  end
  get "order", to: "orders#show"
  resources :extra_orders, only: [:create, :update, :destroy]

  get "baskets/:id/confirmation", to: "baskets#confirmation"
  get "orders/:id/success", to: "orders#success"
  get "orders/:id/failure", to: "orders#failure"

  resources :users, only: [:show, :edit, :update]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
