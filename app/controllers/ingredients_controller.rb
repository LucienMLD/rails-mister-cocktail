class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def shox
    @ingredient
  end
end
