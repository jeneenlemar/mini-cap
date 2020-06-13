Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
    post "/products" => "products#create"
  end
end

# This code was all before lesson 17 to practice the basics
# get "all_products" => "products#all_products_action"
# get "one_product" =>"products#one_product_action"
# get "any_product" =>"products#any_product_action"
# get "any_product/:id" =>"products#any_product_action"
