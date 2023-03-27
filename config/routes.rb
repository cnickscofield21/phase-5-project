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


  # Testing
  get '/hello', to: 'application#hello_world'
end
