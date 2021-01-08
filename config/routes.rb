Rails.application.routes.draw do
  root to: 'pages#home'
  resources :reviews
  resources :genres
  resources :user_records
  resources :records
  resources :users

  resources :log_in, only: [:new, :create]
  delete 'logout', to: 'log_in#destroy', as: 'log_out'

  get '/static/show', to: 'static#show'
  get '/static/high_price', to: 'static#high_price'
  get '/static/low_price', to: 'static#low_price'
  get '/static/a_to_z', to: 'static#a_to_z'
  get '/static/z_to_a', to: 'static#z_to_a'
  get '/static/sort_date', to: 'static#sort_date'
  get '/static/sort_date_new', to: 'static#sort_date_new'
  get 'records/:id/current_cart', to: 'records#current_cart', as: 'current_cart'
  post 'records/:id/add_to_cart', to: 'records#add_to_cart', as: 'add_to_cart'
  post 'records/:id/leave_review', to: 'records#leave_review', as: 'leave_review'
  post 'records/:id/checkout', to: 'records#checkout', as: 'checkout'
  patch 'user_records/:id/switch_user', to: 'user_records#switch_users', as: 'switch_users'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end