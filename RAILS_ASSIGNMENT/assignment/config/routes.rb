Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :has_many_example do
    resources :patient
    resources :physician
    
    resources :appointment
  end
  namespace :has_and_belongs_to_many_example do
    resources :sector do
      get "add_new_industry"
      patch "add_create_industry"
      delete "delete_connection"
    end

    resources :industry do
      get "add_new_sector"
      patch "add_create_sector"
      delete "delete_connection"
    end

  end
  resources :application
  root "application#index"
    
end
