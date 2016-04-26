Rails.application.routes.draw do

  root 'welcome#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/dashboard', to: 'users#show'

  resources :users, only: [:new, :create]
  resources :links

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :links, only: [:index, :create, :update, :destroy]
    end
  end
end
