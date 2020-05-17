Rails.application.routes.draw do
  get 'users/show'

  devise_for :users
  root 'top#index'
  resources :users, only: [:edit, :update,:show]
  resources :maigos
  resources :maigos do
    resources :comments, only: :create
  end
  
end
