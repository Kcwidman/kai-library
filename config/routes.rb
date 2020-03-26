Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :subjects
  root "home#index"
end
