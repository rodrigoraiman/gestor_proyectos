Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 #get "/home", to: "home#index"

 #get "proyectos/new", to: "proyectos#new"
 #get "proyectos/:id", to: "proyectos#show"
 #post "proyectos", to: "proyectos#create"
 resources :proyectos
 root 'proyectos#new'
end
