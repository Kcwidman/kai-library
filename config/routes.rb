Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'book/delete'
  resources :books
  resources :subjects
  # get 'book/new'
  # post 'book/create'
  # patch 'book/update'
  # get 'book/show'
  # get 'book/edit'

  # get 'book/update'

  # get 'books/show_subjects'
  root 'books#index'#sets the default page to lsit

end