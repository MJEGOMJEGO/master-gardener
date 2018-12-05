class Task < ApplicationRecord
  belongs_to :plant
  belongs_to :action

  scope :todo_quickly, -> do
    where(done: false).
    where("max_date >= :today AND max_date <= :in_four_days",
      today: Date.today,
      in_four_days: Date.today + 4.days
    )
  end
end
