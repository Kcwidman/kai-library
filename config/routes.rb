Rails.application.routes.draw do
  devise_for :users
  
  resources :books
  resources :subjects
  get "home/index"
  root "greeting#index"
end
