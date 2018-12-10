class Task < ApplicationRecord
  belongs_to :plant
  belongs_to :action

  extend Enumerize
  enumerize :status, in: [:pending, :done, :deadline_missed], scope: true

  scope :todo_quickly, -> do
    with_status(:pending).
    where("max_date >= :today AND max_date <= :in_four_days",
      today: Date.today,
      in_four_days: Date.today + 4.days
    )
  end
end
