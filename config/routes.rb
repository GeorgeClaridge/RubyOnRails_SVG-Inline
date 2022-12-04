Rails.application.routes.draw do
  resources :table_examples
  #get 'home/index'
  root 'home#index'
  get 'home/contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
