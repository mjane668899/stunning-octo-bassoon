Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  root to: 'public#main'

  get 'login', to:'sessions#new'
  post 'login', to: 'sessions#create'
  get 'dashboard', to: 'sessions#dashboard'
  get 'authorized', to: 'sessions#page_requires_login'
end
