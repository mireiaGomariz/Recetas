Rails.application.routes.draw do

 devise_for :users

 get 'recetas/index', to: "recetas#index"

 get 'recetas/new', to: "recetas#new"
 post 'recetas/create', to: "recetas#create"

 get 'recetas/show/:id', to: "recetas#show", as: 'show_receta'

 get 'recetas/edit/:id', to: "recetas#edit", as: 'edit_receta'
 patch 'recetas/update/:id', to: "recetas#update", as: 'update_recetas'

 delete 'recetas/delete/:id', to: "recetas#delete", as: 'delete_receta'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
