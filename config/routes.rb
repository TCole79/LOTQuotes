Rails.application.routes.draw do
  resources :quotes

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "quotes#index"
  get "/quotes", to: "quotes#index"
  get "/tolkien", to: "quotes#tolkien"
  get "/tolkien_character/:name", to: "quotes#tolkien_character"
  get "/about", to: "about#index"

  get "/favorites", to: "favorites#index"

  get "/new_quote", to: "new_quote#index"


  #routes for filtered routes 

  get "/quotes_list", to: "quotes_list#index"

  get "/quotes_list/bilbo", to: "quotes_list#bilbo"
  
  get "/quotes_list/sauron", to: "quotes_list#sauron"

  get "/quotes_list/gimli", to: "quotes_list#gimli"

  get "/quotes_list/aragorn", to: "quotes_list#aragorn"

  get "/quotes_list/gandalf", to: "quotes_list#gandalf"

  get "/quotes_list/legolas", to: "quotes_list#legolas"

  get "/quotes_list/gollum", to: "quotes_list#gollum"

  
  resources :users

  get "/sign_up", to: "registrations#new"
  post "/sign_up", to: "registrations#create"

  get "/sign_in", to: "sessions#new"
  post "/sign_in", to: "sessions#create"
  get "/log_out", to: "sessions#destroy"

  resources :quotes, only: :index do
    member do
      post 'toggle_favorite', to: "quotes#toggle_favorite"
    end
  end  
end
