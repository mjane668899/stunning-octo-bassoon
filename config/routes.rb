Rails.application.routes.draw do

  # stripe : create connect accounts
  scope '/account' do
    post 'create', to: 'account#create', as: 'account_create'
    get 'refresh', to: 'account#refresh', as: 'account_refresh'
    get 'returns', to: 'account#returns', as: 'account_returns'
    post 'dashboard', to: 'account#stripe_dashboard', as: 'stripe_dashboard'
  end

end
