Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'lists/create'
  # get "lists", to: "lists#index"
  resources :lists, only: [:index, :show, :new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  # Defines the root path route ("/")
end
