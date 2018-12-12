module Users
  class UpdateGameStatusService
    def initialize(user)
      @user = user
    end

    def call
      update_score_and_level
      update_badges
    end

    private

    def update_badges
      UpdateBadgesService.new(@user).call
    end

    def update_score_and_level
      substract_points_for_missed_tasks
      update_score
      update_level
      @user.save!
    end

    def update_score
      @user.score = @user.plants.sum(:life_points)
    end

    def substract_points_for_missed_tasks
      plants = @user.plants
      plants.each do |plant|
        tasks = plant.tasks.with_status(:pending)
        tasks.each do |task|
          if task.overdue?
            task.plant.life_points -= task.action.points
            task.plant.save!
            task.update(status: :deadline_missed)
            rebuild_done_task_for_later(task)
          end
        end
      end
    end

    def rebuild_done_task_for_later(task)
      Task.create!(
        plant:    task.plant,
        action:   task.action,
        max_date: task.action.next_task_max_date_when_previous_deadline_missed,
        status:   "pending"
      )
    end

    def update_level
      @user.level_before = @user.level
      new_level = if @user.score < 500
        0
      elsif @user.score < 1000
        1
      elsif @user.score < 2000
        2
      elsif @user.score < 3000
        3
      else
        4
      end

      @user.level = new_level
    end
  end
end
