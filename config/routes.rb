Rails.application.routes.draw do
  get "/", to: "welcome#index"
  get '/guest', to: "sessions#guest"

  get '/woodshop', to: "woodshop#index"

  get 'ply/new', to: "ply#new"
  post 'ply', to: "ply#create"

  get 'solid/new', to: "solid#new"
  post 'solid', to: "solid#create"

  post 'cut', to: "cut#create"
  delete 'cut/:id', to: "cut#delete"

  get 'scrap/new', to: "scrap#new"
  post'scrap', to: "scrap#create"
  delete 'scrap/:id', to: "scrap#delete"
end
