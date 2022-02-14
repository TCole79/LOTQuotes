Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "quotes#index"
  get "/quotes", to: "quotes#index"

  get "/about", to: "about#index"

  get "/favourites", to: "favourites#index"

  get "/new_quote", to: "new_quote#index"

  resources :users

  get "/sign_up", to: "registrations#new"
  post "/sign_up", to: "registrations#create"

  get "/sign_in", to: "sessions#new"
  post "/sign_in", to: "sessions#create"
  get "/logout", to: "sessions#destroy"


end
