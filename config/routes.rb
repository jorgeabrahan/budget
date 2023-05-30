Rails.application.routes.draw do
  devise_for :users
  root "groups#index" # categories as home page
  get '/categories', to: 'groups#index', as: 'categories'
  get '/categories/new', to: 'groups#new', as: 'new_category'
  get '/categories/:id', to: 'groups#show', as: 'category'

  get '/categories/:category_id/transactions', to: 'dealings#index', as: 'category_transactions'
  get '/categories/:category_id/transactions/new', to: 'dealings#new', as: 'new_category_transaction'
  get '/categories/:category_id/transactions/:id', to: 'dealings#show', as: 'category_transaction'

  resources :groups, only: [:create, :destroy] do
    resources :dealings, only: [:create, :destroy]
  end

  get '/home', to: 'home#index', as: 'home'
end
