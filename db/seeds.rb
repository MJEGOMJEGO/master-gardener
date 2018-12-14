puts "Cleaning database..."
Task.destroy_all
Plant.destroy_all
Action.destroy_all
User.destroy_all
Specie.destroy_all

puts "Creating users..."
matt = User.create!(email: 'jego_matt@hotmail.com', password: 'password', username: 'Matthieu', city_location: 'Nantes', level: 2, score: 1850, img: File.open(Rails.root.join('db/fixtures/users/Matt.png')), badges: ['fake-flower-1'])
ben  = User.create!(email: 'bendelonge@yahoo.com', password: 'password',username: 'Benoit', city_location: 'Paris', level: 1, score: 600, img: File.open(Rails.root.join('db/fixtures/users/Benoit.png')), badges: ['fake-flower-1'])
adrien  = User.create!(email: 'adrien.pierre.bonnet@gmail.com', password: 'password',username: 'Adrien', city_location: 'Bordeaux', level: 3, score: 2000, img: File.open(Rails.root.join('db/fixtures/users/Adrien.png')), badges: ['fake-flower-1'])
henri  = User.create!(email: 'henri-devorsine@hotmail.fr', password: 'password',username: 'Henri', city_location: 'Lille', level: 0, score: 100, img: File.open(Rails.root.join('db/fixtures/users/Henri.png')), badges: ['fake-flower-1'])

puts "Creating species..."
amaryllis     = Specie.create!(code: 'amaryllis', name: 'Amaryllis', max_life_points: 2000)
cactus        = Specie.create!(code: 'cactus', name: 'Cactus', max_life_points: 1000)
caoutchouc    = Specie.create!(code: 'caoutchouc', name: 'Caoutchouc', max_life_points: 2000)
ficus         = Specie.create!(code: 'ficus', name: 'Ficus', max_life_points: 2000)
pachystachys  = Specie.create!(code: 'pachystachys', name: 'Pachystachys', max_life_points: 3000)

puts "Creating plants..."
bernard = Plant.create!(specie: ficus, nickname: 'Bernard', life_points: 950, user: matt)
sophie  = Plant.create!(specie: caoutchouc, nickname: 'Sophie', life_points: 100, user: matt)
rené    = Plant.create!(specie: cactus, nickname: 'René', life_points: 800, user: matt)
albert  = Plant.create!(specie: amaryllis, nickname: 'Albert', life_points: 400, user: ben)
hubert  = Plant.create!(specie: pachystachys, nickname: 'Hubert', life_points: 200, user: ben)
jacky   = Plant.create!(specie: caoutchouc, nickname: 'Jacky', life_points: 300, user: adrien)
pedro   = Plant.create!(specie: amaryllis, nickname: 'Pedro', life_points: 100, user: adrien)
georges = Plant.create!(specie: cactus, nickname: 'Georges', life_points: 100, user: henri)

puts "Creating actions..."

water_amaryllis     = Action.create!(code: 'water', name: 'water', points: 100, specie: amaryllis, sentence: 'I am thirsty, give me water.', frequency_in_days: 7)
cut_amaryllis       = Action.create!(code: 'cut', name: 'cut', points: 250, specie: amaryllis, sentence: 'I have too many leafs give me a nice leaf-cut.', frequency_in_days: 40)
feed_amaryllis      = Action.create!(code: 'feed', name: 'feed', points: 200, specie: amaryllis, sentence: 'I am hungry, feed me.', frequency_in_days: 40)
pot_amaryllis       = Action.create!(code: 'pot', name: 'pot', points: 250, specie: amaryllis, sentence: 'I am too big, give me some space.', frequency_in_days: 80)
exposure_amaryllis  = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: amaryllis, sentence: 'I need to see the sunlight.', frequency_in_days: 40)

water_cactus     = Action.create!(code: 'water',name: 'water', points: 100, specie: cactus, sentence: 'I am thirsty, give me water.', frequency_in_days: 4)
cut_cactus       = Action.create!(code: 'cut',name: 'cut', points: 100, specie: cactus, sentence: 'I have too many leafs give me a nice leaf-cut.', frequency_in_days: 40)
feed_cactus      = Action.create!(code: 'feed', name: 'feed', points: 200, specie: cactus, sentence: 'I am hungry, feed me.', frequency_in_days: 40)
pot_cactus       = Action.create!(code: 'pot', name: 'pot', points: 250, specie: cactus, sentence: 'I am too big, give me some space.',  frequency_in_days: 80)
exposure_cactus  = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: cactus, sentence: 'I need to see the sunlight.', frequency_in_days: 40)

water_caoutchouc    = Action.create!(code: 'water', name: 'water', points: 100, specie: caoutchouc, sentence: 'I am thirsty, give me water.', frequency_in_days: 7)
cut_caoutchouc      = Action.create!(code: 'cut', name: 'cut', points: 250, specie: caoutchouc, sentence: 'I have too many leafs give me a nice leaf-cut.', frequency_in_days: 40)
feed_caoutchouc     = Action.create!(code: 'feed', name: 'feed', points: 200, specie: caoutchouc, sentence: 'I am hungry, feed me.', frequency_in_days: 40)
pot_caoutchouc      = Action.create!(code: 'pot', name: 'pot', points: 250, specie: caoutchouc, sentence: 'I am too big, give me some space.', frequency_in_days: 80)
exposure_caoutchouc = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: caoutchouc, sentence: 'I need to see the sunlight.', frequency_in_days: 40)

water_ficus    = Action.create!(code: 'water', name: 'water', points: 100, specie: ficus, sentence: 'I am thirsty, give me water.', frequency_in_days: 7)
cut_ficus      = Action.create!(code: 'cut', name: 'cut', points: 250, specie: ficus, sentence: 'I have too many leafs give me a nice leaf-cut.', frequency_in_days: 40)
feed_ficus     = Action.create!(code: 'feed', name: 'feed', points: 200, specie: ficus, sentence: 'I am hungry, feed me.', frequency_in_days: 40)
pot_ficus      = Action.create!(code: 'pot', name: 'pot', points: 250, specie: ficus, sentence: 'I am too big, give me some space.', frequency_in_days: 80)
exposure_ficus = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: ficus, sentence: 'I need to see the sunlight.', frequency_in_days: 40)

water_pachystachys    = Action.create!(code: 'water', name: 'water', points: 100, specie: pachystachys, sentence: 'I am thirsty, give me water.', frequency_in_days: 7)
cut_pachystachys      = Action.create!(code: 'cut', name: 'cut', points: 250, specie: pachystachys, sentence: 'I have too many leafs give me a nice leaf-cut.', frequency_in_days: 40)
feed_pachystachys     = Action.create!(code: 'feed', name: 'feed', points: 200, specie: pachystachys, sentence: 'I am hungry, feed me.', frequency_in_days: 40)
pot_pachystachys      = Action.create!(code: 'pot', name: 'pot', points: 250, specie: pachystachys, sentence: 'I am too big, give me some space.', frequency_in_days: 80)
exposure_pachystachys = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: pachystachys, sentence: 'I need to see the sunlight.',  frequency_in_days: 40)


puts "Creating tasks..."

Task.create!(plant: bernard, action: water_ficus, max_date: '2018-12-25', status: "pending")
Task.create!(plant: bernard, action: cut_ficus, max_date: '2018-12-18', status: "pending")
Task.create!(plant: bernard, action: feed_ficus, max_date: '2018-12-14', status: "pending")
Task.create!(plant: bernard, action: pot_ficus, max_date: '2018-12-01', status: "deadline_missed")
Task.create!(plant: bernard, action: exposure_ficus, max_date: '2018-12-31', status: "pending")
Task.create!(plant: bernard, action: exposure_ficus, max_date: '2018-12-10', status: "done", done_at: '2018-12-09')


Task.create!(plant: sophie, action: water_caoutchouc, max_date: '2018-12-25', status: "pending")
Task.create!(plant: sophie, action: cut_caoutchouc, max_date: '2018-12-18', status: "pending")
Task.create!(plant: sophie, action: feed_caoutchouc, max_date: '2018-12-20', status: "pending")
Task.create!(plant: sophie, action: pot_caoutchouc, max_date: '2018-12-14', status: "pending")
Task.create!(plant: sophie, action: exposure_caoutchouc, max_date: '2018-12-31', status: "pending")
Task.create!(plant: sophie, action: water_caoutchouc, max_date: '2018-12-07', status: "done", done_at: '2018-12-05' )


Task.create!(plant: rené, action: water_cactus, max_date: '2018-12-14', status: "pending")
Task.create!(plant: rené, action: cut_cactus, max_date: '2018-12-25', status: "pending")
Task.create!(plant: rené, action: feed_cactus, max_date: '2018-12-25', status: "pending")
Task.create!(plant: rené, action: pot_cactus, max_date: '2018-12-29', status: "pending")
Task.create!(plant: rené, action: exposure_cactus, max_date: '2018-12-31', status: "pending")
Task.create!(plant: rené, action: water_cactus, max_date: '2018-12-05', status: "done", done_at: '2018-12-04')


Task.create!(plant: albert, action: water_amaryllis, max_date: '2018-12-14', status: "pending")
Task.create!(plant: albert, action: cut_amaryllis, max_date: '2018-12-18', status: "pending")
Task.create!(plant: albert, action: feed_amaryllis, max_date: '2018-12-18', status: "pending")
Task.create!(plant: albert, action: pot_amaryllis, max_date: '2018-12-29', status: "pending")
Task.create!(plant: albert, action: exposure_amaryllis, max_date: '2018-12-31', status: "pending")

Task.create!(plant: jacky, action: feed_caoutchouc, max_date: '2018-12-14', status: "pending")
Task.create!(plant: pedro, action: water_amaryllis, max_date: '2018-12-14', status: "pending")

puts "Finished!"

