class TasksController < ApplicationController
  before_action :find_task, only: [:mark_as_done]
  before_action :update_user_badges
  def edit
  end

  def mark_as_done
    @task.done = true
    @task.save!
    update_plant_lifepoints
    update_player_score

    redirect_to plant_path(@task.plant)
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def update_user_badges
    UpdateUserBadgesService.new(current_user).call
  end

  def update_plant_lifepoints
    @task.plant.life_points += @task.action.points
    if @task.plant.life_points > @task.action.specie.max_life_points
      @task.plant.life_points = @task.action.specie.max_life_points
    end
    @task.plant.save
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


end
