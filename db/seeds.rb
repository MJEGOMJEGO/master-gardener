puts "Cleaning database..."
Task.destroy_all
Plant.destroy_all
Action.destroy_all
User.destroy_all
Specie.destroy_all

puts "Creating users..."
matt = User.create!(email: 'jego_matt@hotmail.com', password: 'password', username: 'Matthieu', city_location: 'Nantes', level: 1, score: 1950, img: File.open(Rails.root.join('db/fixtures/users/Matt.png')), badges: ['fake-flower-1'])
ben  = User.create!(email: 'bendelonge@yahoo.com', password: 'password',username: 'Benoit', city_location: 'Paris', level: 2, score: 0, img: File.open(Rails.root.join('db/fixtures/users/Benoit.jpg')), badges: ['fake-flower-1'])

puts "Creating species..."
ficus         = Specie.create!(code: 'ficus', name: 'Ficus', max_life_points: 2000)
orchidee      = Specie.create!(code: 'orchidee', name: 'Orchidée', max_life_points: 1000)
guzmania      = Specie.create!(code: 'guzmania', name: 'Guzmania', max_life_points: 2000)
spathiphyllum = Specie.create!(code: 'spathiphyllum', name: 'Spathiphyllum', max_life_points: 3000)
# gardenia      = Specie.create!(code: 'gardenia', name: 'Gardenia', max_life_points: 1000)

puts "Creating plants..."
bernard = Plant.create!(specie: ficus, nickname: 'Bernard', life_points: 950, user: matt)
sophie  = Plant.create!(specie: spathiphyllum, nickname: 'Sophie', life_points: 100, user: matt)
rené    = Plant.create!(specie: orchidee, nickname: 'René', life_points: 800, user: matt)


puts "Creating actions..."
water_ficus         = Action.create!(code: 'water', name: 'water', points: 100, specie: ficus, frequency_in_days: 7 )
cut_ficus           = Action.create!(code: 'cut', name: 'cut', points: 250, specie: ficus, frequency_in_days: 40 )
water_orchidee      = Action.create!(code: 'water',name: 'water', points: 100, specie: orchidee, frequency_in_days: 4 )
cut_orchidee        = Action.create!(code: 'cut',name: 'cut', points: 100, specie: orchidee, frequency_in_days: 4 )
water_guzmania      = Action.create!(code: 'water', name: 'water', points: 100, specie: guzmania, frequency_in_days: 7 )
cut_guzmania        = Action.create!(code: 'cut', name: 'cut', points: 250, specie: guzmania, frequency_in_days: 40 )
water_spathiphyllum = Action.create!(code: 'water', name: 'water', points: 100, specie: spathiphyllum, frequency_in_days: 7 )
cut_spathiphyllum   = Action.create!(code: 'cut', name: 'cut', points: 250, specie: spathiphyllum, frequency_in_days: 40 )
# water_gardenia      = Action.create!(code: 'water', name: 'water', points: 100, specie: gardenia, frequency_in_days: 7 )
# cut_gardenia        = Action.create!(code: 'cut', name: 'cut', points: 250, specie: gardenia, frequency_in_days: 40 )


puts "Creating tasks..."
Task.create!(plant: bernard, action: water_ficus, max_date: '2018-12-08', done: false)
Task.create!(plant: rené, action: water_ficus, max_date: '2018-12-08', done: false)

Task.create!(plant: sophie, action: cut_ficus, max_date: '2018-12-07', done: false)

puts "Finished!"

