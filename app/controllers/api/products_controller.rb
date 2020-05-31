class Api::ProductsController < ApplicationController

def all_products_action
  @products = Product.all
  render "all_products.json.jb"
  
end

def one_product_action
  @product = Product.first
  render "one_product.json.jb"
  
end

def any_product_action
  @product = Product.find_by(id: params["id"])
  #alternate method to find
  # product_id = params[:id]
  # @product = Product.find_by(id: product_id)
  render "any_product.json.jb"
  
end

end
