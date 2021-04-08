Rails.application.routes.draw do
  root 'devices#index'
  resources :devices
  resources :suppliers
  resources :producers
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
