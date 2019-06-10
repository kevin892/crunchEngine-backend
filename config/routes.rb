Rails.application.routes.draw do
  resources :visited_pages
  resources :search_terms
  resources :gifs
  resources :users
   post 'authenticate', to: 'authentication#authenticate'
   post '/destroyall/:id', to: 'users#destroyall'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
