class Plant < ApplicationRecord
  belongs_to :user
  belongs_to :specie
  has_many :tasks
end
