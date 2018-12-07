class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :plants
  has_many :quizz_answers
  mount_uploader :img, PhotoUploader

  BADGES_DATA = {
    'garden-master' => {
      explanation: 'Garden Master: level 4',
      fullfilment_condition: ->(user) { user.score >= 3000 }
    },
    'botanist' => {
      explanation: 'Botanist : level 3',
      fullfilment_condition: ->(user) { user.score >= 2000 }
    },
    'green-lover' =>  {
      explanation: 'Green Lover : level 2',
      fullfilment_condition: ->(user) { user.score >= 1000 }
    },
    'novice' => {
      explanation: 'Novice : level 1',
      fullfilment_condition: ->(user) { user.score >= 500 }
    },
    'amateur' => {
      explanation: 'Amateur : TWO plants in your garden',
      fullfilment_condition: ->(user) { user.plants.count >= 2 }
    },
    'professionnal' => {
      explanation: 'Pro : THREE plants in your garden',
      fullfilment_condition: ->(user) { user.plants.count >= 3 }
    },
    'collector' => {
      explanation: 'Collector : FIVE plants in your garden',
      fullfilment_condition: ->(user) { user.plants.count >= 5 }
    },
    'orchidee-genious' => {
      explanation: '5 good answers on plant orchidee',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'orchidee-master' => {
      explanation: 'max-level reached on orchidee',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'gardenia-genious' => {
      explanation: '5 good answers on plant gardenia',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'gardenia-master' => {
      explanation: 'max-level reached on gardenia',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'spathiphyllum-genious' => {
      explanation: '5 good answers on plant spathiphyllum',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'spathiphyllum-master' => {
      explanation: 'max-level reached on spathiphyllum',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'ficus-benjamina-genious' => {
      explanation: '5 good answers on plant ficus-benjamina',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'ficus-benjamina-master' => {
      explanation: 'max-level reached on ficus-benjamina',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'guzmania-genious' => {
      explanation: '5 good answers on plant guzmania',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'guzmania-master' => {
      explanation: 'max-level reached on guzmania',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'arroseur' => {
      explanation: 'Watering 10 times',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'cuisinier' => {
      explanation: 'Fertilize 3 times',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'rempoteur' => {
      explanation: 'Repot 2 times',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'bucheron' => {
      explanation: 'Cut 3 times',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'mister-meteo' =>  {
      explanation: 'Sun explosure 3 times',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'fake-flower-1' =>  {
      explanation: 'fake-flower-1',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'fake-flower-2' =>  {
      explanation: 'fake-flower-2',
      fullfilment_condition: ->(user) { user.username == "fake" }
    }
  }

  class Badge
    attr_reader :id
    def initialize(id, explanation, fullfilment_condition)
      @id                    = id
      @explanation           = explanation
      @fullfilment_condition = fullfilment_condition
    end

    def self.all
      all_badges_objects = BADGES_DATA.map do |id, information|
        Badge.new(id, information[:explanation], information[:fullfilment_condition])
      end

      return all_badges_objects
    end

    def user_elligible?(user)
      @fullfilment_condition.call(user)
    end
  end
end
