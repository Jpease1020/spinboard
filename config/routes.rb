Rails.application.routes.draw do
  root 'welcome#index'
  get '/dashboard', to: 'users#show'
  resources :users, only: [:new, :create]
end
