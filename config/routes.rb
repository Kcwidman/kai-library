Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'book/delete'
  resources :books
  resources :subjects
  root "books#index" # sets the default page to index
end
