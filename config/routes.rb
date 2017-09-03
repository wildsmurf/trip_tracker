Rails.application.routes.draw do
  root 'trips#index'

  resources :trips

  resources :locations do
    resources :addresses
  end


  get 'new_trip_address/:id', to: 'trips#new_address', as: 'new_trip_address'
  post 'add_trip_address/:id/:address_id', to: 'trips#add_address', as: 'add_trip_address'
  get 'delete_trip_address/:id/:address_id', to: 'trips#delete_address', as: 'delete_trip_address'

end

#   get 'new_chart_song/:id', to: 'charts#new_song', as: 'new_chart_song'
# 	post 'add_chart_song/:id/:song_id', to: 'charts#add_song', as: 'add_chart_song'
# 	get 'delete_chart_song/:id/:song_id', to: 'charts#delete_song', as: 'delete_chart_song'