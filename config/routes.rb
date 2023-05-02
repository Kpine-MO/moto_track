Rails.application.routes.draw do
  resources :tests
  # mount Avo::Engine, at: Avo.configuration.root_path
  resources :expences
  resources :issues
  resources :trips
  resources :vehicles
  resources :vehicle_models
  resources :models
  devise_for :users
  resources :dashboard
  resources :saccos
  get "home/about"
  root "home#index"

  # devise_scope :user do
  #   root "home#index"
  # end
  # root "dashboard#landing_page"
end
