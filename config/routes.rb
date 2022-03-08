Rails.application.routes.draw do
  root "units#index"

  resources :units do
    resources :equips
    resources :locations
  end
end
