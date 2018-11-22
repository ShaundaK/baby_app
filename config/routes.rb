Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
    get "products" => "products#index"
  namespace :api do
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    get "/categories" => "categories#index"
    get "/categories/:id" => "categories#show"
    
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"


  end
end
