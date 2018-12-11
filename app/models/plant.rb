class Plant < ApplicationRecord
  belongs_to :user
  belongs_to :specie
  has_many :tasks

  def next_tasks_to_do
    self.tasks.todo_quickly
  end

  def next_task_to_do
    self.next_tasks_to_do.first
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
