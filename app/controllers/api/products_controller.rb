class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.json.jbuilder"
  end
    
  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "show.json.jbuilder"
  end

  def create
    @product = Product.new(
      name: params[:input_name],
      description: params[:input_description],
      age: params[:input_age],
      gender: params[:input_gender]
      )
     @product.save
     render "show.json.jbuilder"
  end
end
