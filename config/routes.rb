Rails.application.routes.draw do
  # get "lists", to: "lists#index"
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create destroy]
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    root to: "pages#home"
    # Defines the root path route ("/")
  end
end
