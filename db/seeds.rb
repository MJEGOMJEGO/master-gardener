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
ficus         = Specie.create!(code: 'ficus', name: 'Ficus', max_life_points: 2000)
orchidee      = Specie.create!(code: 'orchidee', name: 'Orchidée', max_life_points: 1000)
guzmania      = Specie.create!(code: 'guzmania', name: 'Guzmania', max_life_points: 2000)
spathiphyllum = Specie.create!(code: 'spathiphyllum', name: 'Spathiphyllum', max_life_points: 3000)
gardenia      = Specie.create!(code: 'gardenia', name: 'Gardenia', max_life_points: 1000)

puts "Creating plants..."
bernard = Plant.create!(specie: ficus, nickname: 'Bernard', life_points: 950, user: matt)
sophie  = Plant.create!(specie: spathiphyllum, nickname: 'Sophie', life_points: 100, user: matt)
rené    = Plant.create!(specie: orchidee, nickname: 'René', life_points: 800, user: matt)
albert  = Plant.create!(specie: orchidee, nickname: 'Albert', life_points: 400, user: ben)


puts "Creating actions..."
water_ficus         = Action.create!(code: 'water', name: 'water', points: 100, specie: ficus, sentence: 'I am thirsty, give me water.', frequency_in_days: 7 )
cut_ficus           = Action.create!(code: 'cut', name: 'cut', points: 250, specie: ficus, sentence: 'I have to many leafs give me a nice leaf-cut.', frequency_in_days: 40 )
feed_ficus          = Action.create!(code: 'feed', name: 'feed', points: 25, specie: ficus, sentence: 'I am hungry, feed me.', frequency_in_days: 40 )
pot_ficus           = Action.create!(code: 'pot', name: 'pot', points: 250, specie: ficus, sentence: 'I am to big, give me some space.', frequency_in_days: 80 )
exposure_ficus      = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: ficus, sentence: 'I need to see the sunlight.', frequency_in_days: 40 )

water_orchidee        = Action.create!(code: 'water',name: 'water', points: 100, specie: orchidee, sentence: 'I am thirsty, give me water.', frequency_in_days: 4 )
cut_orchidee          = Action.create!(code: 'cut',name: 'cut', points: 100, specie: orchidee, sentence: 'I have to many leafs give me a nice leaf-cut.', frequency_in_days: 40 )
feed_orchidee        = Action.create!(code: 'feed', name: 'feed', points: 25, specie: orchidee, sentence: 'I am hungry, feed me.', frequency_in_days: 40 )
pot_orchidee         = Action.create!(code: 'pot', name: 'pot', points: 250, specie: orchidee, sentence: 'I am to big, give me some space.',  frequency_in_days: 80 )
exposure_orchidee    = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: orchidee, sentence: 'I need to see the sunlight.', frequency_in_days: 40 )

water_guzmania        = Action.create!(code: 'water', name: 'water', points: 100, specie: guzmania, sentence: 'I am thirsty, give me water.', frequency_in_days: 7 )
cut_guzmania          = Action.create!(code: 'cut', name: 'cut', points: 250, specie: guzmania, sentence: 'I have to many leafs give me a nice leaf-cut.', frequency_in_days: 40 )
feed_guzmania          = Action.create!(code: 'feed', name: 'feed', points: 25, specie: guzmania, sentence: 'I am hungry, feed me.', frequency_in_days: 40 )
pot_guzmania           = Action.create!(code: 'pot', name: 'pot', points: 250, specie: guzmania, sentence: 'I am to big, give me some space.', frequency_in_days: 80 )
exposure_guzmania      = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: guzmania, sentence: 'I need to see the sunlight.', frequency_in_days: 40 )

water_spathiphyllum         = Action.create!(code: 'water', name: 'water', points: 100, specie: spathiphyllum, sentence: 'I am thirsty, give me water.', frequency_in_days: 7 )
cut_spathiphyllum           = Action.create!(code: 'cut', name: 'cut', points: 250, specie: spathiphyllum, sentence: 'I have to many leafs give me a nice leaf-cut.', frequency_in_days: 40 )
feed_spathiphyllum          = Action.create!(code: 'feed', name: 'feed', points: 25, specie: spathiphyllum, sentence: 'I am hungry, feed me.', frequency_in_days: 40 )
pot_spathiphyllum           = Action.create!(code: 'pot', name: 'pot', points: 250, specie: spathiphyllum, sentence: 'I am to big, give me some space.', frequency_in_days: 80 )
exposure_spathiphyllum      = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: spathiphyllum, sentence: 'I need to see the sunlight.', frequency_in_days: 40 )

water_gardenia              = Action.create!(code: 'water', name: 'water', points: 100, specie: gardenia, sentence: 'I am thirsty, give me water.', frequency_in_days: 7 )
cut_gardenia                =  Action.create!(code: 'cut', name: 'cut', points: 250, specie: gardenia, sentence: 'I have to many leafs give me a nice leaf-cut.', frequency_in_days: 40 )
feed_gardenia               = Action.create!(code: 'feed', name: 'feed', points: 25, specie: gardenia, sentence: 'I am hungry, feed me.', frequency_in_days: 40 )
pot_gardenia                = Action.create!(code: 'pot', name: 'pot', points: 250, specie: gardenia, sentence: 'I am to big, give me some space.', frequency_in_days: 80 )
exposure_gardenia           = Action.create!(code: 'exposure', name: 'exposure', points: 150, specie: gardenia, sentence: 'I need to see the sunlight.',  frequency_in_days: 40 )


puts "Creating tasks..."
Task.create!(plant: bernard, action: water_ficus, max_date: '2018-12-12', status: "pending")
Task.create!(plant: bernard, action: cut_ficus, max_date: '2018-12-15', status: "pending")
Task.create!(plant: bernard, action: feed_ficus, max_date: '2018-12-18', status: "pending")
Task.create!(plant: bernard, action: pot_ficus, max_date: '2018-12-29', status: "pending")
Task.create!(plant: bernard, action: exposure_ficus, max_date: '2018-12-31', status: "pending")

Task.create!(plant: sophie, action: water_spathiphyllum, max_date: '2018-12-12', status: "pending")
Task.create!(plant: sophie, action: cut_spathiphyllum, max_date: '2018-12-15', status: "pending")
Task.create!(plant: sophie, action: feed_spathiphyllum, max_date: '2018-12-18', status: "pending")
Task.create!(plant: sophie, action: pot_spathiphyllum, max_date: '2018-12-29', status: "pending")
Task.create!(plant: sophie, action: exposure_spathiphyllum, max_date: '2018-12-31', status: "pending")

Task.create!(plant: rené, action: water_orchidee, max_date: '2018-12-12', status: "pending")
Task.create!(plant: rené, action: cut_orchidee, max_date: '2018-12-15', status: "pending")
Task.create!(plant: rené, action: feed_orchidee, max_date: '2018-12-18', status: "pending")
Task.create!(plant: rené, action: pot_orchidee, max_date: '2018-12-29', status: "pending")
Task.create!(plant: rené, action: exposure_orchidee, max_date: '2018-12-31', status: "pending")

Task.create!(plant: albert, action: water_orchidee, max_date: '2018-12-12', status: "pending")
Task.create!(plant: albert, action: cut_orchidee, max_date: '2018-12-15', status: "pending")
Task.create!(plant: albert, action: feed_orchidee, max_date: '2018-12-18', status: "pending")
Task.create!(plant: albert, action: pot_orchidee, max_date: '2018-12-29', status: "pending")
Task.create!(plant: albert, action: exposure_orchidee, max_date: '2018-12-31', status: "pending")

puts "Finished!"

