Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets, only: [:index, :new, :create] do
    resource :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show]
end
