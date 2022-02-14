Rails.application.routes.draw do
  get 'registrations/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "quotes#index"
  get "/quotes", to: "quotes#index"

  get "/about", to: "about#index"

  get "/favourites", to: "favourites#index"

  get "/new_quote", to: "new_quote#index"

end
