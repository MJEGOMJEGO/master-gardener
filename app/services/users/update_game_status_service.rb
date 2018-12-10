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
      update_score
      update_level
      lose_points_if_no_care
      @user.save!
    end

    def update_score
      @user.score = @user.plants.sum(:life_points)
    end

    def lose_points_if_no_care
      plants = @user.plants
        plants.each do |plant|
          tasks = plant.tasks.where(done: false)
            tasks.each do |task|
              if task.max_date - Date.today < 0
                task.plant.life_points -= task.plant.action.points
                  task.done = true
                  task.done_at = DateTime.now
                  task.save!
                  rebuild_done_task_for_later
          end
        end
      end
    end

    def update_level
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
