class TutorialsController < ApplicationController
  before_action :set_tutorial, only: %i[ update destroy ]

  # GET /tutorials
  def index
    @tutorials = Tutorial.all

    render json: @tutorials, status: :ok
  end

  # GET /tutorials/1
  def show
    @tutorial = Tutorial.find(params[:id])
    render json: @tutorial, status: :ok
  end

  # POST /tutorials
  def create
    @tutorial = Tutorial.new(tutorial_params)

    if @tutorial.save
      render json: @tutorial, status: :created, location: @tutorial
    else
      render json: @tutorial.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tutorials/1
  def update
    if @tutorial.update(tutorial_params)
      render json: @tutorial, status: :ok
    else
      render json: @tutorial.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tutorials/1
  def destroy
    if @tutorial.destroy!
    render json: nil, status: :ok
        else
          render json: @post.errors, status: :unprocessable_entity
        end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutorial
      @tutorial = Tutorial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tutorial_params
      params.require(:tutorial).permit(:title, :description, :published)
    end
end
