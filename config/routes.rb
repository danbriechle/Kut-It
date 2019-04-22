Rails.application.routes.draw do
  get "/", to: "welcome#index"
  get '/guest', to: "sessions#guest"

  get '/woodshop', to: "woodshop#index"

  get '/ply', to: "ply#index"
end
