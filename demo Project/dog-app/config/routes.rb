Rails.application.routes.draw do
  
  
  resources :dogs
  resources :user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dogs#index"
end
