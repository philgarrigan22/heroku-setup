class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end

  def show
    @ingredients = Ingredient.find(params[:id])
    render json: @ingredients
  end
end
