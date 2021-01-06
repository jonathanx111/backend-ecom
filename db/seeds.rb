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
guitar1 = Instrument.create(type_of: "guitar", brand: "Fender1", model: "Stratocaster", year: 1967, user_id: anthony.id, condition: "Good", price: 5000, picture_url: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-43e0dcb47b596a63__hmac-e3e7a13c56e86a32c36f29ebd129901fa9e1350d/images/guitars/StratPP3TS/MX20164689/MX20164689-body-large.jpg.auto.webp")
Instrument.create(type_of: "guitar", brand: "Fender2", model: "Stratocaster", year: 1967, user_id: anthony.id, condition: "Good", price: 5000, picture_url: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-43e0dcb47b596a63__hmac-e3e7a13c56e86a32c36f29ebd129901fa9e1350d/images/guitars/StratPP3TS/MX20164689/MX20164689-body-large.jpg.auto.webp")
Instrument.create(type_of: "guitar", brand: "Fender3", model: "Stratocaster", year: 1967, user_id: anthony.id, condition: "Good", price: 5000, picture_url: "https://media.sweetwater.com/api/i/f-webp__q-82__ha-43e0dcb47b596a63__hmac-e3e7a13c56e86a32c36f29ebd129901fa9e1350d/images/guitars/StratPP3TS/MX20164689/MX20164689-body-large.jpg.auto.webp")
Instrument.create(type_of: "banjo", brand: "Deering", model: "5-String", year: 2004, user_id: anthony.id, condition: "Poor", price: 12000, picture_url: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTPwu74RNh70PPZ3hUolmJD5Ark5OWNFSIHjDxIEduC7ym3oT1T8MIPK-grAhaMwgFJgn9IQdMToZw1cw&usqp=CAc")
piano1 = Instrument.create(type_of: "piano", brand: "Steinway1", model: "Grand", year: 1934, user_id: jonathan.id, condition: "Excellent", price:13000, picture_url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSOSrQQP6QYYMc4ZzN4h8-37m1yKU1ALSGfuzZALk153UISGDUuWlmxTChDUPGa9jVGi0sIE2xeVZdazlYflyeErKfBFSOJ65GSAv1TJtbj&usqp=CAc")
Instrument.create(type_of: "piano", brand: "Steinway2", model: "Grand", year: 1934, user_id: jonathan.id, condition: "Excellent", price:13000, picture_url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSOSrQQP6QYYMc4ZzN4h8-37m1yKU1ALSGfuzZALk153UISGDUuWlmxTChDUPGa9jVGi0sIE2xeVZdazlYflyeErKfBFSOJ65GSAv1TJtbj&usqp=CAc")
Instrument.create(type_of: "piano", brand: "Steinway3", model: "Grand", year: 1934, user_id: jonathan.id, condition: "Excellent", price:13000, picture_url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSOSrQQP6QYYMc4ZzN4h8-37m1yKU1ALSGfuzZALk153UISGDUuWlmxTChDUPGa9jVGi0sIE2xeVZdazlYflyeErKfBFSOJ65GSAv1TJtbj&usqp=CAc")
Instrument.create(type_of: "piano", brand: "Steinway4", model: "Grand", year: 1934, user_id: jonathan.id, condition: "Excellent", price:13000, picture_url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSOSrQQP6QYYMc4ZzN4h8-37m1yKU1ALSGfuzZALk153UISGDUuWlmxTChDUPGa9jVGi0sIE2xeVZdazlYflyeErKfBFSOJ65GSAv1TJtbj&usqp=CAc")

puts "Seeding Listing"

Listing.create(buyer_id: 0, seller_id: anthony.id, instrument_id: guitar1.id)
Listing.create(buyer_id: 0, seller_id: jonathan.id, instrument_id: piano1.id)
# Listing.create(buyer_id: jonathan.id, seller_id)
puts "Done"
