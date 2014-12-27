Rails.application.routes.draw do
  resources :sessions, only: [:new, :create] do
    collection { get :delete }
  end

  resources :messages, only: [:index, :create]

  root 'messages#index'
  end
