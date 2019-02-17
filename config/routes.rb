Rails.application.routes.draw do

 devise_for :users

 get 'recetas/index', to: "recetas#index"

 get 'recetas/new', to: "recetas#new"
 post 'recetas/create', to: "recetas#create"

 get 'recetas/show/:id', to: "recetas#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
