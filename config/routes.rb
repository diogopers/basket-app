Rails.application.routes.draw do
  devise_for :users


  resources :baskets, only: [:new, :create]
  resources :orders, only: [:new, :create, :update]
  get "baskets/:id/confirmation", to: "baskets#confirmation"
  get "orders/:id/success", to: "orders#success"
  get "orders/:id/failure", to: "orders#failure"
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
