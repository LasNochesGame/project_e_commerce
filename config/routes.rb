Rails.application.routes.draw do
  root to: 'home#welcome'
  resources :shops
end
