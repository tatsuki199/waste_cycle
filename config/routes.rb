Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts, only: :index
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
