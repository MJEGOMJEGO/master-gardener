class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :plants
  has_many :tasks, through: :plants
  has_many :quizz_answers
  mount_uploader :img, PhotoUploader
end
