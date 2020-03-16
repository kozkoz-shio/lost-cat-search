Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :users, only: [:edit, :update]
  resources :maigos
  
end
