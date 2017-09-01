class StepsController < ApplicationController
  # GET /steps
  def index
    @recipe = Recipe.find(params[:recipe_id])
    @steps = @recipe.steps
  end

  # GET /steps/1
  def show
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.find(params[:id])
  end

  # GET /steps/new
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.new
  end

  # GET /steps/1/edit
  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.find(params[:id])
  end

  # POST /steps
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.new(step_params)

    if @step.save
      redirect_to @step, notice: 'Step was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /steps/1
  def update
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.find(params[:id])
    if @step.update(step_params)
      redirect_to @step, notice: 'Step was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /steps/1
  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @step = @recipe.steps.find(params[:id])
    @step.destroy
    redirect_to steps_url, notice: 'Step was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def step_params
    params.require(:step).permit(:instruction)
  end
end
