puts "Cleaning database..."
Task.destroy_all
Plant.destroy_all
Action.destroy_all
User.destroy_all
Specie.destroy_all

puts "Creating users..."
matt = User.create!(email: 'jego_matt@hotmail.com', password: 'password', username: 'Matthieu', city_location: 'Nantes', level: 1, score: 600, img: File.open(Rails.root.join('db/fixtures/users/Matt.png')), badges: ['fake-flower-1'])
ben  = User.create!(email: 'bendelonge@yahoo.com', password: 'password',username: 'Benoit', city_location: 'Paris', level: 2, score: 1500, img: File.open(Rails.root.join('db/fixtures/users/Benoit.jpg')), badges: ['fake-flower-1'])

puts "Creating species..."
haworthia = Specie.create!(code: 'haworthia', name: 'Haworthia', max_life_points: 2000)
cactus    = Specie.create!(code: 'cactus', name: 'Cactus', max_life_points: 1000)
ficus     =  Specie.create!(code: 'ficus', name: 'Ficus', max_life_points: 2000)

puts "Creating plants..."
bernard = Plant.create!(specie: cactus, nickname: 'Bernard', life_points: 950, user: matt)
sophie  = Plant.create!(specie: haworthia, nickname: 'Sophie', life_points: 1, user: matt)
rené    = Plant.create!(specie: ficus, nickname: 'René', life_points: 800, user: matt)


puts "Creating actions..."
water_ficus      = Action.create!(code: 'water', name: 'water', points: 100, specie: ficus, frequency_in_days: 7 )
water_cactus     = Action.create!(code: 'water',name: 'water', points: 100, specie: cactus, frequency_in_days: 21 )
water_haworthia  = Action.create!(code: 'water',name: 'water', points: 100, specie: haworthia, frequency_in_days: 4 )
cut_haworthia    = Action.create!(code: 'cut', name: 'cut', points: 250, specie: haworthia, frequency_in_days: 40 )

puts "Creating tasks..."
Task.create!(plant: bernard, action: water_cactus, max_date: '2018-12-08', done: false)
Task.create!(plant: rené, action: water_ficus, max_date: '2018-12-08', done: false)

Task.create!(plant: sophie, action: cut_haworthia, max_date: '2018-12-07', done: false)

puts "Finished!"

