Rails.application.routes.draw do
  get "/", to: "welcome#index"
  get '/guest', to: "sessions#guest"

  get '/woodshop', to: "woodshop#index"

  get 'ply/new', to: "ply#new"
  post 'ply', to: "ply#create"

  get 'solid/new', to: "solid#new"

  post 'cut', to: "cut#create"
end
