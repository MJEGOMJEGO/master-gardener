class PlantsController < ApplicationController
  before_action :find_plant, only: [:show, :edit, :update, :destroy]
  before_action :find_next_task, only: [:show]
  before_action :update_user_badges
  def index
    # @plants = Plant.all

    @plants = current_user.plants
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
      Plants::CreateTasksService.new(@plant).call
      # TODO update user badges
      redirect_to plants_path
    else
      render 'new'
    end
  end

 #  def edit
 #  end

 # def update
 #   if @plant.update()
 #   else
 #     render 'edit'
 #   end
 # end


  def destroy
    @plant.tasks.destroy_all
    @plant.delete
    update_player_score

    redirect_to plants_path
  end

  private

  def find_plant
    @plant = Plant.find(params[:id])
  end


  def update_user_badges
    UpdateUserBadgesService.new(current_user).call
  end

 def update_player_score
   current_user.score = current_user.plants.sum(:life_points)
   current_user.level = update_player_level(current_user.score)
   current_user.save!
   # @task.plant.user.score = @task.plant.user.plants.sum(:life_points)
 end

 def update_player_level(score)
   if score < 500
     0
   elsif score < 1000
     1
   elsif score < 2000
     2
   elsif score < 3000
     3
   else
     4
   end
 end

  def find_next_task
    if @plant.tasks.todo_quickly != []
      @plant.tasks.todo_quickly.each do |task|
        if task.action.name == "water"
          @task = task
          @task_text = "  I am thirsty, give me water"
        elsif task.action.name == "exposure"
          @task = task
          @task_text = "  I need to see the sunlight."
        elsif task.action.name == "cut"
          @task = task
          @task_text = "  I have to many leafs give me a nice leaf-cut."
        elsif task.action.name == "feed"
          @task = task
          @task_text = "  I am hungry, feed me."
        elsif task.action.name == "pot"
          @task = task
          @task_text = "  I am to big, give me some space."
        end
      end
    else
      @no_task = "I am feeling good today. Come back tomorow."
    end
  end

  def plant_params
    params.require(:plant).permit(:specie_id, :nickname, :user, :life_points)
  end
end
