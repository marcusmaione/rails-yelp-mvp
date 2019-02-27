# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Amarelinho',
    phone_number: 55558888,
    category: 'chinese',
    address: '7 Boundary St, London E2 7JE'
  },
  {
    name: 'Verdinho',
    phone_number: 55559999,
    category: 'italian',
    address: '7 Boundary St, London E2 7JE'
  },
  {
    name: 'Karolina',
    phone_number: 55556666,
    category: 'japanese',
    address: '7 Boundary St, London E2 7JE'
  },
  {
    name: 'Porcao',
    phone_number: 55554444,
    category: 'french',
    address: '7 Boundary St, London E2 7JE'
  },
  {
    name: 'Fogo de chao',
    phone_number: 55552222,
    category: 'belgian',
    address: '7 Boundary St, London E2 7JE'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
