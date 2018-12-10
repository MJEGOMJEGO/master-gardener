class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :plants
  has_many :quizz_answers
  mount_uploader :img, PhotoUploader

  BADGES_DATA = {
    'garden-master' => {
      explanation: 'Garden Master',
      description: 'level 4',
      fullfilment_condition: ->(user) { user.score >= 3000 }
    },
    'botanist' => {
      explanation: 'Botanist',
      description: 'level 3',
      fullfilment_condition: ->(user) { user.score >= 2000 }
    },
    'green-lover' =>  {
      explanation: 'Green Lover',
      description: 'level 2',
      fullfilment_condition: ->(user) { user.score >= 1000 }
    },
    'novice' => {
      explanation: 'Novice',
      description: 'level 1',
      fullfilment_condition: ->(user) { user.score >= 500 }
    },
    'amateur' => {
      explanation:'Amateur',
      description: 'Two plants in your garden',
      fullfilment_condition: ->(user) { user.plants.count >= 2 }
    },
    'professionnal' => {
      explanation: 'Pro',
      description: 'Three plants in your garden',
      fullfilment_condition: ->(user) { user.plants.count >= 3 }
    },
    'collector' => {
      explanation: 'Collector',
      description: 'five plants in your garden',
      fullfilment_condition: ->(user) { user.plants.count >= 5 }
    },
    'orchidee-genious' => {
      explanation: 'orchidee-genious',
      description: '5 good answers on plant orchidee',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'orchidee-master' => {
      explanation: 'orchidee-master',
      description: 'max-life reached on orchidee',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'gardenia-genious' => {
      explanation: 'gardenia-genious',
      description: '5 good answers on plant gardenia',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'gardenia-master' => {
      explanation: 'gardenia-master',
      description: 'max-life reached on gardenia',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'spathiphyllum-genious' => {
      explanation: 'spathiphyllum-genious',
      description: '5 good answers on plant spathiphyllum',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'spathiphyllum-master' => {
      explanation: 'spathiphyllum-master',
      description: 'max-life reached on spathiphyllum',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'ficus-benjamina-genious' => {
      explanation: 'ficus-genious',
      description: '5 good answers on plant ficus',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'ficus-benjamina-master' => {
      explanation: 'ficus-master',
      description: 'max-life reached on ficus',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'guzmania-genious' => {
      explanation: 'guzmania-genious',
      description: '5 good answers on plant guzmania',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'guzmania-master' => {
      explanation: 'guzmania-master',
      description: 'max-life reached on guzmania',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'arroseur' => {
      explanation: 'Watering 10 times',
      description: 'Watering 10 times',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'cuisinier' => {
      explanation: 'cook',
      description: 'Fertilize 3 time',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'rempoteur' => {
      explanation: 'Repot 2 times',
      description: 'Repot 2 times',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'bucheron' => {
      explanation: 'lumberjack',
      description: 'Cut 3 times',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'mister-meteo' =>  {
      explanation: 'mister-meteo',
      description: 'Sun explosure 3 times',
      fullfilment_condition: ->(user) { user.username == "fake" }
    }
  }

  class Badge
    attr_reader :id, :explanation, :description
    def initialize(id, explanation, description, fullfilment_condition)
      @id                    = id
      @explanation           = explanation
      @description           = description
      @fullfilment_condition = fullfilment_condition
    end

    def self.all
      all_badges_objects = BADGES_DATA.map do |id, information|
        Badge.new(id, information[:explanation], information[:description], information[:fullfilment_condition])
      end

      return all_badges_objects
    end

    def user_elligible?(user)
      @fullfilment_condition.call(user)
    end
  end
end
