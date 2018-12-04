class QuizzAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :specie
end
