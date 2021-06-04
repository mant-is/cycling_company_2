Rails.application.routes.draw do
  devise_for :users
  resources :rides, only: :index
  root 'rides#index'
end
