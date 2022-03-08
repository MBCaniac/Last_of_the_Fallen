Rails.application.routes.draw do
  root "units#index"

  resources :units
  resources :locations
end
