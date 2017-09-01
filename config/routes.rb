Rails.application.routes.draw do
  root 'trips#index'
  resources :trips
  resources :locations do
    resouces :addresses
  end
end
