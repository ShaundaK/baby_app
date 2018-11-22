class Api::ProductsController < ApplicationController

  def index
    p current_user
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
      name: params[:name],
      description: params[:description],
      age: params[:age],
      gender: params[:gender]
      )
     @product.save!
     render "show.json.jbuilder"
  end

  def update
    @product = Product.find(params[:id])
    @product.update(
    name: params[:input_name],
    description: params[:input_description],
    age: params[:input_age],
    gender: params[:input_gender]
    )
    if @product.save
      render "show.json.jbuilder"
    else 
      render "error.json.jbuilder"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render "destroy.json.jbuilder"
  end
end
  
