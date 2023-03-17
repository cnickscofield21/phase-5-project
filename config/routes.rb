Rails.application.routes.draw do
  resources :users
  resources :sentences
  resources :clients
  resources :facilities
  resources :organizations

    # route to test your configuration
    get '/hello', to: 'application#hello_world'
end
