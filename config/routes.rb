Rails.application.routes.draw do
  devise_for :users
  resources :rides, only: [:index, :show]
  root 'rides#index'
end
