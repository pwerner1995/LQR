Rails.application.routes.draw do
  
  get '/', to: 'application#root', as: 'root'
  get '/home', to: 'application#home', as: 'home'
  
  get '/stores', to: 'stores#index', as: 'stores' 
  get '/stores/new', to: 'stores#new', as: 'new_store'
  get 'stores/:id', to: 'stores#show', as: 'store'
  post '/stores', to: 'stores#create'
  patch '/stores/update', to: 'stores#update'
  get '/stores/:id/edit', to: 'stores#edit', as: 'edit_store'
  get '/stores/:id/delete', to: 'stores#delete', as: 'delete_store'
  get '/stores/:id/menu', to: 'stores#menu', as: 'store_menu'
  get '/stores/:store_id/drinks/:drink_id/', to: 'store_drink#new', as: 'store_new_menu_item'
  post '/stores/:id/drinks/:id/', to: 'store_drink#store_create', as: 'store_create_menu_item_from_store'
  post '/drinks/:id/stores/:id/', to: 'store_drink#drink_create', as: 'store_create_menu_item_from_drink'
  get '/store_drink/:id/delete', to: 'store_drink#delete', as: 'delete_store_drink'
  
  get '/drinks', to: 'drinks#index', as: 'drinks'
  get '/drinks/new', to: 'drinks#new', as: 'new_drink'
  get 'drinks/:id', to: 'drinks#show', as: 'drink'
  post '/drinks', to: 'drinks#create'
  patch '/drinks/:id', to: 'drinks#update'
  get '/drinks/:id/edit', to: 'drinks#edit', as: 'edit_drink'
  get '/drinks/:id/delete', to: 'drinks#delete', as: 'delete_drink'
end
