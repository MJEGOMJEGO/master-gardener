class Task < ApplicationRecord
  belongs_to :plant
  belongs_to :action
end
