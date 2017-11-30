Rails.application.routes.draw do
  get 'favourites/new'

  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  get '/favourites', to: 'favourites#favourites'
  delete '/remove_favourite', to: 'favourites#destroy'

  resources :petrol_stations
  resources :refuellings
  resources :cars
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
