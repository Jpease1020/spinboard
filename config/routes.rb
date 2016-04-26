Rails.application.routes.draw do

  root 'welcome#index'
  get '/dashboard', to: 'users#create' 
  resources :users, only: [:new, :create]
end
