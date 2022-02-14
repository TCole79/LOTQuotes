Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'registrations/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "quotes#index"
  get "/quotes", to: "quotes#index"

  get "/about", to: "about#index"

  get "/favourites", to: "favourites#index"

  get "/new_quote", to: "new_quote#index"

  resources :users

  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


end
