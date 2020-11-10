Rails.application.routes.draw do

  root to: 'pages#home'
  get 'error' => 'pages#error', as: 'pages_error'

  # Properties

  resources :properties

  # bookings : (still in test mode)
  resources :booking
  get 'booking/index'


  # Users
  resources :users, :only => [:new, :create, :show]
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'
  get 'listings' => 'users#listings', as: 'users_listings'
  get 'settings' => 'users#settings', as: 'users_settings'

  # stripe : create connect accounts
  scope '/account' do
    post 'create', to: 'account#create', as: 'account_create'
    post 'update', to: 'account#update', as: 'account_update'
    get 'refresh', to: 'account#refresh', as: 'account_refresh'
    get 'return', to: 'account#return', as: 'account_return'
    post 'dashboard', to: 'account#stripe_dashboard', as: 'stripe_dashboard'
  end
end
