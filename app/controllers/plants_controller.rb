class PlantsController < ApplicationController
  before_action :find_plant, only: [:show]
  def index
    @plants = Plant.all
  end

  def show
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    if @plant.save
      redirect_to plants_path
    else
      render 'new'
    end
  end

  private

  def find_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:specie_id, :nickname, :user, :life_points)
  end
end
