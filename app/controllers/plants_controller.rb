class PlantsController < ApplicationController
  before_action :find_plant, only: [:show, :edit, :update, :destroy]
  before_action :find_next_task, only: [:show]

  def index
    @plants = current_user.plants
  end

  def show
    # FOR THE THANKS POPUP
    unless current_user.tasks.where(status: "done").empty?
      @last_task_done = current_user.tasks.where(status: "done").order(:updated_at).last
      @last_task_points = @last_task_done.action.points
    end
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user

    if @plant.save
      Plants::CreateTasksService.new(@plant).call
      update_user_game_status
      redirect_to plants_path
    else
      render 'new'
    end
  end

  def destroy
    @plant.tasks.destroy_all
    @plant.delete
    update_user_game_status

    redirect_to plants_path
  end

  private

  def find_plant
    @plant = Plant.find(params[:id])
  end

  def update_user_game_status
    Users::UpdateGameStatusService.new(current_user).call
  end

  def find_next_task
    @task = @plant.next_task_to_do

    if @task.nil?
      @no_task = "I feel good today. Come back tomorow."
    else
      @task_text = @task.action.sentence
    end
  end

  def plant_params
    params.require(:plant).permit(:specie_id, :nickname, :user, :life_points)
  end
end
