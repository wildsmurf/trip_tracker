Rails.application.routes.draw do
  get 'addresses/index'

  get 'addresses/show'

  get 'addresses/new'

  get 'locations/index'

  get 'locations/show'

  get 'locations/new'

  get 'trips/index'

  get 'trips/show'

  get 'trips/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
