class Action < ApplicationRecord
  belongs_to :specie
  has_many :tasks
end
