puts "Cleaning database..."
Task.destroy_all
Plant.destroy_all
Action.destroy_all
User.destroy_all
Specie.destroy_all

puts "Creating users..."
matt = User.create!(email: 'jego_matt@hotmail.com', password: 'password', username: 'Matthieu', city_location: 'Nantes', level: 2, score: 1950, img: File.open(Rails.root.join('db/fixtures/users/Matt.png')), badges: ['fake-flower-1'])
ben  = User.create!(email: 'bendelonge@yahoo.com', password: 'password',username: 'Benoit', city_location: 'Paris', level: 0, score: 400, img: File.open(Rails.root.join('db/fixtures/users/Benoit.jpg')), badges: ['fake-flower-1'])
adrien  = User.create!(email: 'adrien.pierre.bonnet@gmail.com', password: 'password',username: 'Adrien', city_location: 'Bordeaux', level: 0, score: 0, img: File.open(Rails.root.join('db/fixtures/users/Adrien.jpg')), badges: ['fake-flower-1'])
henri  = User.create!(email: 'henri-devorsine@hotmail.fr', password: 'password',username: 'Henri', city_location: 'Lille', level: 0, score: 0, img: File.open(Rails.root.join('db/fixtures/users/Henri.jpg')), badges: ['fake-flower-1'])

puts "Creating species..."
amaryllis     = Specie.create!(code: 'amaryllis', name: 'Amaryllis', max_life_points: 2000)
cactus        = Specie.create!(code: 'cactus', name: 'Cactus', max_life_points: 1000)
caoutchou     = Specie.create!(code: 'caoutchou', name: 'Caoutchou', max_life_points: 2000)
ficus         = Specie.create!(code: 'ficus', name: 'Ficus', max_life_points: 2000)
pachystachys  = Specie.create!(code: 'pachystachys', name: 'Pachystachys', max_life_points: 3000)

puts "Creating plants..."
bernard = Plant.create!(specie: ficus, nickname: 'Bernard', life_points: 950, user: matt)
sophie  = Plant.create!(specie: caoutchou, nickname: 'Sophie', life_points: 100, user: matt)
rené    = Plant.create!(specie: cactus, nickname: 'René', life_points: 800, user: matt)
albert  = Plant.create!(specie: amaryllis, nickname: 'Albert', life_points: 400, user: ben)
hubert  = Plant.create!(specie: pachystachys, nickname: 'Hubert', life_points: 200, user: ben)


puts "Creating actions..."

water_amaryllis     = Action.create!(code: 'water', name: 'water', points: 100, specie: amaryllis, frequency_in_days: 7 )
cut_amaryllis       = Action.create!(code: 'cut', name: 'cut', points: 250, specie: amaryllis, frequency_in_days: 40 )
feed_amaryllis      = Action.create!(code: 'feed', name: 'feed', points: 25, specie: amaryllis, frequency_in_days: 40 )
pot_amaryllis       = Action.create!(code: 'pot', name: 'pot', points: 250, specie: amaryllis, frequency_in_days: 80 )
exposure_amaryllis  = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: amaryllis, frequency_in_days: 40 )

water_cactus     = Action.create!(code: 'water',name: 'water', points: 100, specie: cactus, frequency_in_days: 21 )
cut_cactus       = Action.create!(code: 'cut',name: 'cut', points: 100, specie: cactus, frequency_in_days: 1000 )
feed_cactus      = Action.create!(code: 'feed', name: 'feed', points: 25, specie: cactus, frequency_in_days: 180 )
pot_cactus       = Action.create!(code: 'pot', name: 'pot', points: 250, specie: cactus, frequency_in_days: 180 )
exposure_cactus  = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: cactus, frequency_in_days: 40 )

water_caoutchou    = Action.create!(code: 'water', name: 'water', points: 100, specie: caoutchou, frequency_in_days: 7 )
cut_caoutchou      = Action.create!(code: 'cut', name: 'cut', points: 250, specie: caoutchou, frequency_in_days: 40 )
feed_caoutchou     = Action.create!(code: 'feed', name: 'feed', points: 25, specie: caoutchou, frequency_in_days: 40 )
pot_caoutchou      = Action.create!(code: 'pot', name: 'pot', points: 250, specie: caoutchou, frequency_in_days: 80 )
exposure_caoutchou = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: caoutchou, frequency_in_days: 40 )

water_ficus    = Action.create!(code: 'water', name: 'water', points: 100, specie: ficus, frequency_in_days: 7 )
cut_ficus      = Action.create!(code: 'cut', name: 'cut', points: 250, specie: ficus, frequency_in_days: 40 )
feed_ficus     = Action.create!(code: 'feed', name: 'feed', points: 25, specie: ficus, frequency_in_days: 40 )
pot_ficus      = Action.create!(code: 'pot', name: 'pot', points: 250, specie: ficus, frequency_in_days: 80 )
exposure_ficus = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: ficus, frequency_in_days: 40 )

water_pachystachys    = Action.create!(code: 'water', name: 'water', points: 100, specie: pachystachys, frequency_in_days: 7 )
cut_pachystachys      = Action.create!(code: 'cut', name: 'cut', points: 250, specie: pachystachys, frequency_in_days: 40 )
feed_pachystachys     = Action.create!(code: 'feed', name: 'feed', points: 25, specie: pachystachys, frequency_in_days: 40 )
pot_pachystachys      = Action.create!(code: 'pot', name: 'pot', points: 250, specie: pachystachys, frequency_in_days: 80 )
exposure_pachystachys = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: pachystachys, frequency_in_days: 40 )


puts "Creating tasks..."
Task.create!(plant: bernard, action: water_ficus, max_date: '2018-12-12', status: "pending")
Task.create!(plant: bernard, action: cut_ficus, max_date: '2018-12-15', status: "pending")
Task.create!(plant: bernard, action: feed_ficus, max_date: '2018-12-18', status: "pending")
Task.create!(plant: bernard, action: pot_ficus, max_date: '2018-12-29', status: "pending")
Task.create!(plant: bernard, action: exposure_ficus, max_date: '2018-12-31', status: "pending")

Task.create!(plant: sophie, action: water_caoutchou, max_date: '2018-12-12', status: "pending")
Task.create!(plant: sophie, action: cut_caoutchou, max_date: '2018-12-15', status: "pending")
Task.create!(plant: sophie, action: feed_caoutchou, max_date: '2018-12-18', status: "pending")
Task.create!(plant: sophie, action: pot_caoutchou, max_date: '2018-12-29', status: "pending")
Task.create!(plant: sophie, action: exposure_caoutchou, max_date: '2018-12-31', status: "pending")

Task.create!(plant: rené, action: water_cactus, max_date: '2018-12-12', status: "pending")
Task.create!(plant: rené, action: cut_cactus, max_date: '2018-12-15', status: "pending")
Task.create!(plant: rené, action: feed_cactus, max_date: '2018-12-18', status: "pending")
Task.create!(plant: rené, action: pot_cactus, max_date: '2018-12-29', status: "pending")
Task.create!(plant: rené, action: exposure_cactus, max_date: '2018-12-31', status: "pending")

Task.create!(plant: albert, action: water_amaryllis, max_date: '2018-12-12', status: "pending")
Task.create!(plant: albert, action: cut_amaryllis, max_date: '2018-12-15', status: "pending")
Task.create!(plant: albert, action: feed_amaryllis, max_date: '2018-12-18', status: "pending")
Task.create!(plant: albert, action: pot_amaryllis, max_date: '2018-12-29', status: "pending")
Task.create!(plant: albert, action: exposure_amaryllis, max_date: '2018-12-31', status: "pending")

puts "Finished!"

