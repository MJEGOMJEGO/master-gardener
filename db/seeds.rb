# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Task.destroy_all
Plant.destroy_all
Action.destroy_all
User.destroy_all
Specie.destroy_all

puts "Creating users..."
matt = User.create!(email: 'jego_matt@hotmail.com', password: 'password', username: 'Matthieu', city_location: 'Nantes', level: 1, score: 600, img: File.open(Rails.root.join('db/fixtures/users/Matt.png')))
ben = User.create!(email: 'bendelonge@yahoo.com', password: 'password',username: 'Benoit', city_location: 'Paris', level: 2, score: 1500, img: File.open(Rails.root.join('db/fixtures/users/Benoit.jpg')))  )

puts "Creating species..."
cactus = Specie.create!(name: 'Cactus', max_life_points: 1000 , img_water: File.open(Rails.root.join('db/fixtures/species/cactus/cactus_main.svg')), img_feed: '', img_exposure: '', img_repot: '', img_cutclean:'', img_feeling_good: '', img_feeling_bad: '')


puts "Creating plants..."
bernard = Plant.create!(specie: cactus, nickname: 'Bernard', life_points: 600, user: matt)

puts "Creating actions..."
water_cactus = Action.create!(name: 'water', points: 100, img: File.open(Rails.root.join('db/fixtures/actions/water.png')), specie: cactus, frequency_in_days: 21 )

puts "Creating tasks..."
Task.create!(plant: bernard, action: water_cactus, max_date: '2018-12-11', mark_as_done: false)


puts "Finished!"
