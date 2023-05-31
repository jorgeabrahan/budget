Rails.application.routes.draw do
  devise_for :users
  root "groups#index" # categories as home page
  get '/categories', to: 'groups#index', as: 'categories'
  get '/categories/new', to: 'groups#new', as: 'new_category'

  get '/categories/:category_id/transactions', to: 'groups/dealings#index', as: 'category_transactions'
  get '/categories/:category_id/transactions/new', to: 'groups/dealings#new', as: 'new_category_transaction'

  resources :groups, only: [:create, :destroy] do
    resources :dealings, only: [:create, :destroy], controller: 'groups/dealings'
  end

  get '/home', to: 'home#index', as: 'home'
end
