class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :plants
  has_many :tasks, through: :plants
  has_many :quizz_answers
  mount_uploader :img, PhotoUploader
  geocoded_by :city_location
  after_validation :geocode, if: :will_save_change_to_city_location?

  validates :city_location, presence: true

end
