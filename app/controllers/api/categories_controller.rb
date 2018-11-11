class Api::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render "index.json.jbuilder"
  end

  def show
    category_id = params[:id]
    @category = Category.find_by(id: category_id)
    render "show.json.jbuilder"
  end
end
