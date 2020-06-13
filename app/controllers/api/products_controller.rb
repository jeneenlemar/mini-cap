class Api::ProductsController < ApplicationController

def index
  @products = Product.all
  render "index.json.jb"
  
end

def show
  @product = Product.find(params[:id])
  render "show.json.jb"
end

def create
  @product = Product.new(
  name: params[:name],
  price: params[:price],
  image_url: params[:image],
  description: params[:description],
  )
  @product.save
  render "show.json.jb"
end

def update
  @product = Product.find(params[:id])
  @product.name = params[:name] || @product.name
  @product.price = params[:price] || @product.price
  @product.image_url = params[:image_url] || @product.image_url
  @product.description = params[:description] || @product.description
  @product.save
  render "show.json.jb"
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy
  render json: {message: "Item successfully deleted"}
end









end

  # This code was all before lesson 17 to practice the basics
# def all_products_action
#   @products = Product.all
#   render "all_products.json.jb"
  
# end

# def one_product_action
#   @product = Product.first
#   render "one_product.json.jb"
  
# end

# def any_product_action
#   @product = Product.find_by(id: params["id"])
#   #alternate method to find
#   # product_id = params[:id]
#   # @product = Product.find_by(id: product_id)
#   render "any_product.json.jb"
  
# end