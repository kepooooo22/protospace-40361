Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  resources :users, only: :show
  root to:'prototypes#index'
  resources :prototypes
  resources :prototypes do
    resources :comments
  end
end
