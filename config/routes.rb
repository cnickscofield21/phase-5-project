Rails.application.routes.draw do
  resources :users
  resources :sentences
  resources :clients
  resources :facilities
  resources :organizations

  # Custom Auth routes
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/authorized', to: 'users#show'

  # Alternative ???
  # get '/me', to: "users#show_me"

end
