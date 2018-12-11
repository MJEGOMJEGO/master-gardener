class TasksController < ApplicationController
  before_action :find_task, only: [:mark_as_done]

  def edit
  end

  def mark_as_done
    @task.status  = "done"
    @task.done_at = DateTime.now
    @task.save!
    flash[:action_done] = "Thanks!"
    update_plant_lifepoints
    update_user_game_status
    rebuild_done_task_for_later


    redirect_to plant_path(@task.plant)
  end

  private

  def rebuild_done_task_for_later
    Task.create!(
      plant:    @task.plant,
      action:   @task.action,
      max_date: Date.today + @task.action.frequency_in_days,
      status:   "pending"
    )
  end

  def find_task
    @task = Task.find(params[:id])
  end

  def update_user_game_status
    Users::UpdateGameStatusService.new(current_user).call
  end

  def update_plant_lifepoints
    @task.plant.life_points += @task.action.points
    if @task.plant.life_points > @task.action.specie.max_life_points
      @task.plant.life_points = @task.action.specie.max_life_points
    end
    @task.plant.save
  end
end
