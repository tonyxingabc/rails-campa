# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Van.destroy_all
Booking.destroy_all

u1 = User.create({email: "lito@gmail.com", password:"1111111", name: "Lito", username: "Litotechie"})
u2 = User.create({email: "tony@gmail.com", password:"1111111",name: "Tony", username: "tonyxingabc"})

v1 = Van.create({user_id: u1.id, description: "The most beautiful van in the world", cost_per_night: 70, max_guest: 2, transmission_type: "manual", toilet: true, beds: 2, location: "Berlin"})
v2 = Van.create({user_id: u2.id, description: "The most ugly van in the world", cost_per_night: 20, max_guest: 2, transmission_type: "manual", toilet: false, beds: 2, location: "Auckland"})

puts "finished"
