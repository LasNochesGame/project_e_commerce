Rails.application.routes.draw do
  devise_for :users
  root to: 'home#welcome'
  resources :shops
end
