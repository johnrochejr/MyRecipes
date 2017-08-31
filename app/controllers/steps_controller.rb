class StepsController < ApplicationController
  # GET /steps
  def index
    @steps = Step.all
  end

  # GET /steps/1
  def show
    @step = Step.find(params[:id])
  end

  # GET /steps/new
  def new
    @step = Step.new
  end

  # GET /steps/1/edit
  def edit
    @step = Step.find(params[:id])
  end

  # POST /steps
  def create
    @step = Step.new(step_params)

    if @step.save
      redirect_to @step, notice: 'Step was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /steps/1
  def update
    @step = Step.find(params[:id])
    if @step.update(step_params)
      redirect_to @step, notice: 'Step was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /steps/1
  def destroy
    @step = Step.find(params[:id])
    @step.destroy
    redirect_to steps_url, notice: 'Step was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def step_params
    params.require(:step).permit(:instruction, :recipe_id)
  end
end
