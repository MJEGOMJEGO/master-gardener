class TasksController < ApplicationController
  before_action :find_task, only: [:mark_as_done]

  def edit
  end

  def mark_as_done
    @task.done = true
    @task.save!
    update_plant_lifepoints
    redirect_to plant_path(@task.plant)
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def update_plant_lifepoints
    @task.plant.life_points += @task.action.points
    @task.plant.save
  end

end
