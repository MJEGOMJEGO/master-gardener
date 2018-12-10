class Action < ApplicationRecord
  belongs_to :specie
  has_many :tasks

  def next_task_max_date_when_previous_deadline_missed
    Date.today + (self.frequency_in_days / 5)
  end
end
