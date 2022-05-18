Rails.application.routes.draw do
  resources :products do
    collection do
      get "add_to_cart/:id", to: "products#add_to_cart" ,as:"add_to_cart"
      get :show_cart
      get "remove_from_cart/:item", to: "products#remove_from_cart" ,as:"remove_from_cart"
      
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
  
end
