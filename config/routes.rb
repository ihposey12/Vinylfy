Rails.application.routes.draw do
  resources :reviews
  resources :genres
  resources :user_records
  resources :records
  resources :users

  resources :log_in, only: [:new, :create]
  delete 'logout', to: 'log_in#destroy', as: 'log_out'

  get 'records/:id/current_cart', to: 'records#current_cart', as: 'current_cart'
  post 'records/:id/add_to_cart', to: 'records#add_to_cart', as: 'add_to_cart'
  post 'records/:id/leave_review', to: 'records#leave_review', as: 'leave_review'
  patch 'user_records/:id/switch_user', to: 'user_records#switch_users', as: 'switch_users'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
