Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "all_products" => "products#all_products_action"
    get "one_product" =>"products#one_product_action"
    get "any_product" =>"products#any_product_action"
    get "any_product/:id" =>"products#any_product_action"
  end
end
