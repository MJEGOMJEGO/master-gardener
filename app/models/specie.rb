class Specie < ApplicationRecord
  has_many :quizz_answers
  has_many :actions
  has_many :plants
end
