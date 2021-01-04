# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Deleteing Old Users And Instruments"
User.destroy_all
Instrument.destroy_all

puts "Seeding Users"
jonathan = User.create(username: "jonathan")
anthony = User.create(username: "anthony")

puts "Done" 
puts "Seeding Instruments"
Instrument.create(type_of: "guitar", brand: "Fender", model: "Stratocaster", year: 1967, user_id: anthony.id)
Instrument.create(type_of: "banjo", brand: "Deering", model: "5-String", year: 2004, user_id: anthony.id)
Instrument.create(type_of: "piano", brand: "Steinway", model: "Grand", year: 1934, user_id: jonathan.id)

puts "Done"
