Rails.application.routes.draw do
  devise_for :users
  resources :rides, only: [:index, :show, :new, :create, :destroy]
  root 'rides#index'
end
