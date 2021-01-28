Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  get 'messages/index'
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
