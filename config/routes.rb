Rails.application.routes.draw do

  root to: 'public#main'

  # Users
  resources :users, :only => [:new, :create, :show]
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'
  get 'dashboard', to: 'sessions#dashboard'


  # stripe : create connect accounts
  scope '/stripe_account' do
    post 'create', to: 'stripe_account#create', as: 'stripe_account_create'
    get 'refresh', to: 'stripe_account#refresh', as: 'stripe_account_refresh'
    get 'returns', to: 'stripe_account#returns', as: 'stripe_account_returns'
    post 'dashboard', to: 'stripe_account#stripe_dashboard', as: 'stripe_dashboard'
  end
end
