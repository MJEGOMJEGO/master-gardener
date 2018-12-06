class User < ApplicationRecord
  mount_uploader :img, PhotoUploader
  BADGES = {
    'garden-master' => 'Garden Master, level 4',
    'botanist' => 'Botanist, level 3',
    'green-lover' => 'Green Lover, level 2',
    'novice' => 'Novice, level 1',
    'amateur' => 'Amateur, deux plantes dans le jardin',
    'professionnel' => 'Pro, trois plantes dans le jardin',
    'collectionneur' => 'Collectionneur, 5 plantes dans le jardin',
    'orchidee-genious' => '5 bonnes réponses sur orchidee',
    'orchidee-master' => 'niveau orchidee maximal atteint',
    'gardenia-genious' => '5 bonnes réponses sur gardenia',
    'gardenia-master' => 'niveau gardenia maximal atteint',
    'spathiphyllum-genious' => '5 bonnes réponses sur spathiphyllum',
    'spathiphyllum-master' => 'niveau spathiphyllum maximal atteint',
    'ficus-benjamina-genious' => '5 bonnes réponses sur ficus-benjamina',
    'ficus-benjamina-master' => 'niveau ficus-benjamina maximal atteint',
    'guzmania-genious' => '5 bonnes réponses sur guzmania',
    'guzmania-master' => 'niveau guzmania maximal atteint',
    'arroseur' => 'arroser 10 fois',
    'cuisinier' => 'donner 3 fois engrais',
    'rempoteur' => 'rempoter 2 fois',
    'bucheron' => 'tailler 3 fois',
    'mister-meteo' => 'mettre au soleil 3 fois',
    'fake-flower-1' => 'fake-flower-1',
    'fake-flower-2'  => 'fake-flower-2'

  }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :plants
  has_many :quizz_answers
end
