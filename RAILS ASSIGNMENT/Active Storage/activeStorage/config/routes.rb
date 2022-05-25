Rails.application.routes.draw do
  resources :posts
  resources :products do 
    collection do 
      get "delete_image/:id",action: "delete_image", as: "delete_image"
    end
    
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
end
