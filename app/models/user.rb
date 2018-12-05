class User < ApplicationRecord
  BADGES = {
    'garden-master' => 'Garden Master',
    'botanist' => 'Botanist',
    'watering' => 'Water master',

    # 'amateur' => 'Amateur, deux plantes dans le jardin',
    # 'professionnel' => 'Pro, trois plantes dans le jardin'
    # 'collectionneur' => ''


  }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :plants
  has_many :quizz_answers
end
