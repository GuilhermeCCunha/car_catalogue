Rails.application.routes.draw do
  resources :brands
  get 'welcome/index'
  resources :cars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
