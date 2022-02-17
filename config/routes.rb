Rails.application.routes.draw do
  resources :quotes

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "quotes#index"
  get "/quotes", to: "quotes#index"
  get "/tolkien", to: "quotes#tolkien"
  get "/tolkien_character", to: "quotes#tolkien_character"
  get "/about", to: "about#index"

  get "/favorites", to: "favorites#index"

  get "/new_quote", to: "new_quote#index"

  get "/quotes_list", to: "quotes_list#index"
  
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
