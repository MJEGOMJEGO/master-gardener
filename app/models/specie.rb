class Specie < ApplicationRecord
  has_many :quizz_answers
  has_many :actions
end
