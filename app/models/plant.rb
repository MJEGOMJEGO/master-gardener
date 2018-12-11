class Plant < ApplicationRecord
  belongs_to :user
  belongs_to :specie
  has_many :tasks

  def next_task_to_do
    tasks_todo_quickly = self.tasks.todo_quickly

    if tasks_todo_quickly != []
      tasks_todo_quickly.each do |task|
        if task.action.name == "water"
          return {task: task, task_text: "I am thirsty, give me water" }
        elsif task.action.name == "exposure"
          return {task: task, task_text: "I need to see the sunlight." }
        elsif task.action.name == "cut"
          return {task: task, task_text: "I have to many leafs give me a nice leaf-cut." }
        elsif task.action.name == "feed"
          return {task: task, task_text: "I am hungry, feed me." }
        elsif task.action.name == "pot"
          return {task: task, task_text: "I am to big, give me some space." }
        end
      end
    else
      # Return Default value to allow view to not check if task is nil
      # return {task: DefaultTask.new, task_text: "I am feeling good today. Come back tomorow."}
      return {task: nil, task_text: "I am feeling good today. Come back tomorow."}
    end
  end

  # class DefaultTask
  #   def action
  #     DefaultAction.new
  #   end
  # end

  # class DefaultAction
  #   def name
  #     "neutral"
  #   end
  # end
end
