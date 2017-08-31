class IngredientsController < ApplicationController
  # GET /ingredients/new
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.new
  end

  # POST /ingredients
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.new(ingredient_params)

    if @ingredient.save
      redirect_to @recipe, notice: 'Ingredient was successfully sauced.'
    else
      render :new
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def ingredient_params
    params.require(:ingredient).permit(:Item, :Prep)
  end
end
