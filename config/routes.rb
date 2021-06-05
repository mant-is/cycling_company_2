Rails.application.routes.draw do
  devise_for :users
  resources :rides, only: [:index, :show, :new, :create]
  root 'rides#index'
end
