Rails.application.routes.draw do
  root 'trips#index'
  resources :trips
  resources :locations do
    resources :addresses
  end
end
