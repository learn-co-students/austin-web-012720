Rails.application.routes.draw do
  get 'post/new'
  get 'post/create'
  get 'post/index'
  get 'post/show'
  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
