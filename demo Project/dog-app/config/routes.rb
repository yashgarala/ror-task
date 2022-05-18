Rails.application.routes.draw do
  resources :projects
  devise_for :user1s
  
  
  resources :dogs
  resources :user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :projects
  
  # Defines the root path route ("/")
  root "dogs#index"
  # root "projects#new"
end
