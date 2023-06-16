Rails.application.routes.draw do
  resources :user_branches
  resources :requests
  resources :branch_bloods
  resources :donors
  resources :branches
  resources :blood_types
  resources :users
  resources :towns
  resources :requesters
  resources :cities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get '/branches/update_branch_bloods', to: 'branches#update_branch_bloods'
  # root "articles#index"
end
