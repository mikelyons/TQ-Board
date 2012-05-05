Blog::Application.routes.draw do

  get "/auth/:provider/callback" => "sessions#create_with_omniauth"


  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"

  get "sign_up" => "users#new", :as => "sign_up"

  root :to => "home#index"

  resources :users
  resources :sessions

  get "home/index"
  resources :posts
end
