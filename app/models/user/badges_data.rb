class User
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
    'vegetal-protector' =>  {
      explanation: 'Vegetal-protector',
      description: 'level 2',
      fullfilment_condition: ->(user) { user.score >= 1000 }
    },
    'green-lover' => {
      explanation: 'Green lover',
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
    'amaryllis-genious' => {
      explanation: 'amaryllis-genious',
      description: '5 good answers on plant amaryllis',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'amaryllis-master' => {
      explanation: 'amaryllis-master',
      description: 'max-life reached on amaryllis',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'caoutchouc-genious' => {
      explanation: 'caoutchouc-genious',
      description: '5 good answers on plant caoutchouc',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'caoutchouc-master' => {
      explanation: 'caoutchouc-master',
      description: 'max-life reached on caoutchouc',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'pachystachys-genious' => {
      explanation: 'pachy-genious',
      description: '5 good answers on plant pachystachys',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'pachystachys-master' => {
      explanation: 'pachy-master',
      description: 'max-life reached on pachystachys',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'ficus-master' => {
      explanation: 'ficus-master',
      description: 'max-life reached on ficus',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'cactus-genious' => {
      explanation: 'cactus-genious',
      description: '5 good answers on plant cactus',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'cactus-master' => {
      explanation: 'cactus-master',
      description: 'max-life reached on cactus',
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
    },
    'ficus-genious' => {
      explanation: 'ficus-genious',
      description: '5 good answers on plant ficus',
      fullfilment_condition: ->(user) { user.username == "fake" }
    }
  }
end
