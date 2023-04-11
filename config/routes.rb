Rails.application.routes.draw do
  get 'homes/top'
  get 'books/index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show'
  get 'boos/edit'

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
