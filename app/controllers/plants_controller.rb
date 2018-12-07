class PlantsController < ApplicationController
  before_action :find_plant, only: [:show, :edit, :update, :destroy]
  before_action :find_next_task, only: [:show]
  # before_action :destroy_tasks, only: [:destroy]

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
      Plants::CreateTasksService.new(@plant).call
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
    redirect_to plants_path
  end

  private

  def find_plant
    @plant = Plant.find(params[:id])
  end

  # def destroy_tasks

  # end

  def find_next_task
    if @plant.tasks.todo_quickly != []
      @plant.tasks.todo_quickly.each do |task|
        if task.action.name == "water"
          @task = task
          @task_text = "hey #{@plant.user.username} j'ai soif, IL ME FAUT DE L'EAU!!!!!!!!!"
        elsif task.action.name == "exposure"
          @task = task
          @task_text = "hey #{@plant.user.username} I look like a zombie, Show me the SUN!!"
        elsif task.action.name == "cut"
          @task = task
          @task_text = "hey #{@plant.user.username} I have to many leafs give me a nice leaf-cut."
        elsif task.action.name == "feed"
          @task = task
          @task_text = "hey #{@plant.user.username}I am hungry, feed me!!"
        elsif task.action.name == "repot"
          @task = task
          @task_text = "hey #{@plant.user.username} I am to big, give me some space."
        end
      end
    else
      @no_task = "2 options: I have no tasks OR My next task.max_date is in more than 4 days, todo questions et feeling good"
    end
  end

  def plant_params
    params.require(:plant).permit(:specie_id, :nickname, :user, :life_points)
  end
end
