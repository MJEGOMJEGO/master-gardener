class User
  BADGES_DATA = {
    'garden-master' => {
      explanation: 'Garden Master',
      description: 'Level 4, 3000 pts',
      fullfilment_condition: ->(user) { user.score >= 3000 }
    },
    'botanist' => {
      explanation: 'Botanist',
      description: 'Level 3, 2000 pts',
      fullfilment_condition: ->(user) { user.score >= 2000 }
    },
    'vegetal-protector' =>  {

      explanation: 'Gardener',
      description: 'Level 2, 1000 pts',
      fullfilment_condition: ->(user) { user.score >= 1000 }
    },
    'green-lover' => {
      explanation: 'Green lover',
      description: 'Level 1, 500 pts',
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
      description: 'Four plants in your garden',
      fullfilment_condition: ->(user) { user.plants.count >= 4 }
    },
    'amaryllis-genious' => {
      explanation: 'Amary genious',
      description: '5 good answers on plant amaryllis',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'amaryllis-master' => {
      explanation: 'Amary master',
      description: 'Max-life reached on amaryllis',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'caoutchouc-genious' => {
      explanation: 'Caout genious',
      description: '5 good answers on plant caoutchouc',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'caoutchouc-master' => {
      explanation: 'Caout master',
      description: 'Max-life reached on caoutchouc',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'pachystachys-genious' => {
      explanation: 'Pachy genious',
      description: '5 good answers on plant pachystachys',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'pachystachys-master' => {
      explanation: 'Pachy master',
      description: 'Max-life reached on pachystachys',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'ficus-master' => {
      explanation: 'Ficus master',
      description: 'Max-life reached on ficus',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'cactus-genious' => {
      explanation: 'Cactus genious',
      description: '5 good answers on plant cactus',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'cactus-master' => {
       explanation: 'Cactus master',
      description: 'Max-life reached on cactus',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'arroseur' => {
      explanation: 'Watering',
      description: 'Watering 10 times',
      fullfilment_condition: ->(user) { user.score >= 1950  }
    },
    'cuisinier' => {
      explanation: 'Cook',
      description: 'Fertilize 3 time',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'rempoteur' => {
      explanation: 'Repot',
      description: 'Repot 2 times',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'bucheron' => {
      explanation: 'Lumberjack',
      description: 'Cut 3 times',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'mister-meteo' =>  {
      explanation: 'Mister meteo',
      description: 'Sun explosure 3 times',
      fullfilment_condition: ->(user) { user.username == "fake" }
    },
    'ficus-genious' => {
      explanation: 'Ficus genious',
      description: '5 good answers on plant ficus',
      fullfilment_condition: ->(user) { user.username == "fake" }
    }
  }
end
