Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :asset_details
  resources :laptop
  resources :desktops
  resources :nas
  resources :servers
  resources :printers
  resources :switches
  resources :scanners
  resources :others
end
