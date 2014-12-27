Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]

  resources :messages, only: [:index, :create]

  root 'messages#index'
  end
