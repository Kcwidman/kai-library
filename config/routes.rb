Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :subjects
  root "home#index"

  resources :publishers, only: [:index, :show] do
    resources :books, only: [:index, :show]
  end
  resources :libraries, only: [:index, :show] do
    resources :copies, controller: "libraries/copies", only: [:index, :show]
  end
end
